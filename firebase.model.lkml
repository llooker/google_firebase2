connection: "bigquery_publicdata_standard_sql"

include: "sessions.view"         # include all views in this project

# Change the name to the location of the table (note, no trailing space).
view: app_events_table {
  sql_table_name: bigquery-connectors.firebase.app_events_;;
}

explore: sessions {
  extends: [sessions_base]
}

view: sessions {
  extends: [sessions_base]

  # if any of the events are 'first_open' then this is the first time
  #  a user has used the app.
  dimension: is_first_session {
    type: yesno
    sql: (  SELECT COUNT(*)
            FROM UNNEST(${TABLE}.event_dim) e
            WHERE e.name = 'first_open'
         ) > 0 ;;
  }
  dimension: logged_in_with_facebook {
    type: yesno
    sql: (  SELECT COUNT(*)
            FROM UNNEST(${TABLE}.event_dim) e
            WHERE e.name = 'user_logged_in'
              AND (
                SELECT value.string_value
                FROM UNNEST(e.params) params
                WHERE params.key = 'with_facebook'
              ) = 'true'

         ) > 0 ;;
  }
}

view: device {
  extends: [device_base]
}

view: user {
  extends: [user_base]

  # Make user properties that are specific to your data.
  dimension: language {
    sql: (
      SELECT value.value.string_value
      FROM UNNEST(${TABLE}.user_properties)
      WHERE key='language') ;;
  }

  dimension: coins {
    type: number
    sql: (
      SELECT CAST(value.value.string_value AS INT64)
      FROM UNNEST(${TABLE}.user_properties)
      WHERE key='coins') ;;
  }

  dimension: coins_tiered {
    type: tier
    tiers: [0,100,500,2500,12500]
    sql: ${coins} ;;
  }
}

view: events {
  extends: [events_base]

  # spend_virtual_currency
  dimension:  virtual_currency_name {
    group_label: "spend_virtual_currency"
    sql:  CASE WHEN ${name} = 'spend_virtual_currency' THEN
            (SELECT value.string_value
            FROM UNNEST(${params})
            WHERE key = 'virtual_currency_name')
          END;;
  }

  dimension: item_name {
    group_label: "spend_virtual_currency"
    sql:  CASE WHEN ${name} = 'spend_virtual_currency' THEN
            (SELECT value.string_value
            FROM UNNEST(${params})
            WHERE key = 'item_name')
          END;;
  }

  dimension: spend_value {
    group_label: "spend_virtual_currency"
    type: number
    sql:  CASE WHEN ${name} = 'spend_virtual_currency' THEN
            (SELECT value.int_value
            FROM UNNEST(${params})
            WHERE key = 'value')
          END;;
  }

  measure: total_spend_value {
    group_label: "spend_virtual_currency"
    type: sum
    sql: ${spend_value} ;;
  }

}

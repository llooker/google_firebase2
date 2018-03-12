#-- Machine Generated File, See README.  Do not edit directly
include: "firebase.model.lkml"
view: user_generated {
  extends: [user_base]
  dimension: user_property._ltv_AUD {
    type: number
    sql:
        (SELECT value.value.int_value
        FROM UNNEST(${user_properties})
        WHERE key = '_ltv_AUD')
        ;;
  }

  dimension: user_property._ltv_EUR {
    type: number
    sql:
        (SELECT value.value.int_value
        FROM UNNEST(${user_properties})
        WHERE key = '_ltv_EUR')
        ;;
  }

  dimension: user_property._ltv_GBP {
    type: number
    sql:
        (SELECT value.value.int_value
        FROM UNNEST(${user_properties})
        WHERE key = '_ltv_GBP')
        ;;
  }

  dimension: user_property._ltv_USD {
    type: number
    sql:
        (SELECT value.value.int_value
        FROM UNNEST(${user_properties})
        WHERE key = '_ltv_USD')
        ;;
  }

  dimension: user_property.api_version {
    type: string
    sql:
        (SELECT value.value.string_value
        FROM UNNEST(${user_properties})
        WHERE key = 'api_version')
        ;;
  }

  dimension: user_property.chips {
    type: string
    sql:
        (SELECT value.value.string_value
        FROM UNNEST(${user_properties})
        WHERE key = 'chips')
        ;;
  }

  dimension: user_property.coins {
    type: string
    sql:
        (SELECT value.value.string_value
        FROM UNNEST(${user_properties})
        WHERE key = 'coins')
        ;;
  }

  dimension: user_property.elite_powers {
    type: string
    sql:
        (SELECT value.value.string_value
        FROM UNNEST(${user_properties})
        WHERE key = 'elite_powers')
        ;;
  }

  dimension: user_property.first_open_time {
    type: number
    sql:
        (SELECT value.value.int_value
        FROM UNNEST(${user_properties})
        WHERE key = 'first_open_time')
        ;;
  }

  dimension: user_property.is_signed_in {
    type: string
    sql:
        (SELECT value.value.string_value
        FROM UNNEST(${user_properties})
        WHERE key = 'is_signed_in')
        ;;
  }

  dimension: user_property.is_spender {
    type: string
    sql:
        (SELECT value.value.string_value
        FROM UNNEST(${user_properties})
        WHERE key = 'is_spender')
        ;;
  }

  dimension: user_property.keys {
    type: string
    sql:
        (SELECT value.value.string_value
        FROM UNNEST(${user_properties})
        WHERE key = 'keys')
        ;;
  }

  dimension: user_property.language {
    type: string
    sql:
        (SELECT value.value.string_value
        FROM UNNEST(${user_properties})
        WHERE key = 'language')
        ;;
  }

  dimension: user_property.platform {
    type: string
    sql:
        (SELECT value.value.string_value
        FROM UNNEST(${user_properties})
        WHERE key = 'platform')
        ;;
  }

  dimension: user_property.powers {
    type: string
    sql:
        (SELECT value.value.string_value
        FROM UNNEST(${user_properties})
        WHERE key = 'powers')
        ;;
  }

  dimension: user_property.signed_in {
    type: string
    sql:
        (SELECT value.value.string_value
        FROM UNNEST(${user_properties})
        WHERE key = 'signed_in')
        ;;
  }

  dimension: user_property.spender {
    type: string
    sql:
        (SELECT value.value.string_value
        FROM UNNEST(${user_properties})
        WHERE key = 'spender')
        ;;
  }

  dimension: user_property.xp {
    type: string
    sql:
        (SELECT value.value.string_value
        FROM UNNEST(${user_properties})
        WHERE key = 'xp')
        ;;
  }

}

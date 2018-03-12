connection: "bigquery_publicdata_standard_sql"

include: "FIREBASE_BLOCK.view"         # include all views in this project
include: "*generated.view"

# Change the name to the location of the table (note, no trailing space).
view: app_events_table {
  sql_table_name: bigquery-connectors.firebase.app_events_;;
}

explore: sessions {
  extends: [sessions_base]
}

view: sessions {
  extends: [sessions_base]
}

view: device {
  extends: [device_base]
}

view: user {
  extends: [user_base]
}

view: events {
  extends: [events_base, events_generated]
}

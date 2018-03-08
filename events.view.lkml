include: "firebase.model"

view: events {
  extends: [events_base]
  dimension: events_app_update.previous_app_version{
    type: string
    sql:      CASE WHEN ${name} = 'app_update' THEN
        (SELECT value.string_value
        FROM UNNEST(${params})
        WHERE key = 'previous_app_version')
      END ;;
  }

  dimension: events_collection_unlocked.id{
    type: string
    sql:      CASE WHEN ${name} = 'collection_unlocked' THEN
        (SELECT value.string_value
        FROM UNNEST(${params})
        WHERE key = 'id')
      END ;;
  }

  dimension: events_facebook_account_linked.source{
    type: string
    sql:      CASE WHEN ${name} = 'facebook_account_linked' THEN
        (SELECT value.string_value
        FROM UNNEST(${params})
        WHERE key = 'source')
      END ;;
  }

  dimension: events_facebook_account_linked.success{
    type: string
    sql:      CASE WHEN ${name} = 'facebook_account_linked' THEN
        (SELECT value.string_value
        FROM UNNEST(${params})
        WHERE key = 'success')
      END ;;
  }

  dimension: events_facebook_login_dialog_accepted.source{
    type: string
    sql:      CASE WHEN ${name} = 'facebook_login_dialog_accepted' THEN
        (SELECT value.string_value
        FROM UNNEST(${params})
        WHERE key = 'source')
      END ;;
  }

  dimension: events_facebook_login_dialog_canceled.source{
    type: string
    sql:      CASE WHEN ${name} = 'facebook_login_dialog_canceled' THEN
        (SELECT value.string_value
        FROM UNNEST(${params})
        WHERE key = 'source')
      END ;;
  }

  dimension: events_facebook_login_dialog_popped.source{
    type: string
    sql:      CASE WHEN ${name} = 'facebook_login_dialog_popped' THEN
        (SELECT value.string_value
        FROM UNNEST(${params})
        WHERE key = 'source')
      END ;;
  }

  dimension: events_facebook_session_changed.hasError{
    type: number
    sql:      CASE WHEN ${name} = 'facebook_session_changed' THEN
        (SELECT value.int_value
        FROM UNNEST(${params})
        WHERE key = 'hasError')
      END ;;
  }

  dimension: events_facebook_session_changed.stateValue{
    type: number
    sql:      CASE WHEN ${name} = 'facebook_session_changed' THEN
        (SELECT value.int_value
        FROM UNNEST(${params})
        WHERE key = 'stateValue')
      END ;;
  }

  dimension: events_facebook_session_changed.state{
    type: string
    sql:      CASE WHEN ${name} = 'facebook_session_changed' THEN
        (SELECT value.string_value
        FROM UNNEST(${params})
        WHERE key = 'state')
      END ;;
  }

  dimension: events_first_open.firebase_conversion{
    type: number
    sql:      CASE WHEN ${name} = 'first_open' THEN
        (SELECT value.int_value
        FROM UNNEST(${params})
        WHERE key = 'firebase_conversion')
      END ;;
  }

  dimension: events_graph_subscribe_on_client.facebook{
    type: number
    sql:      CASE WHEN ${name} = 'graph_subscribe_on_client' THEN
        (SELECT value.int_value
        FROM UNNEST(${params})
        WHERE key = 'facebook')
      END ;;
  }

  dimension: events_in_app_purchase.currency{
    type: string
    sql:      CASE WHEN ${name} = 'in_app_purchase' THEN
        (SELECT value.string_value
        FROM UNNEST(${params})
        WHERE key = 'currency')
      END ;;
  }

  dimension: events_in_app_purchase.firebase_conversion{
    type: number
    sql:      CASE WHEN ${name} = 'in_app_purchase' THEN
        (SELECT value.int_value
        FROM UNNEST(${params})
        WHERE key = 'firebase_conversion')
      END ;;
  }

  dimension: events_in_app_purchase.price{
    type: number
    sql:      CASE WHEN ${name} = 'in_app_purchase' THEN
        (SELECT value.int_value
        FROM UNNEST(${params})
        WHERE key = 'price')
      END ;;
  }

  dimension: events_in_app_purchase.product_id{
    type: string
    sql:      CASE WHEN ${name} = 'in_app_purchase' THEN
        (SELECT value.string_value
        FROM UNNEST(${params})
        WHERE key = 'product_id')
      END ;;
  }

  dimension: events_in_app_purchase.product_name{
    type: string
    sql:      CASE WHEN ${name} = 'in_app_purchase' THEN
        (SELECT value.string_value
        FROM UNNEST(${params})
        WHERE key = 'product_name')
      END ;;
  }

  dimension: events_in_app_purchase.quantity{
    type: number
    sql:      CASE WHEN ${name} = 'in_app_purchase' THEN
        (SELECT value.int_value
        FROM UNNEST(${params})
        WHERE key = 'quantity')
      END ;;
  }

  dimension: events_in_app_purchase.value{
    type: number
    sql:      CASE WHEN ${name} = 'in_app_purchase' THEN
        (SELECT value.int_value
        FROM UNNEST(${params})
        WHERE key = 'value')
      END ;;
  }

  dimension: events_item_purchased.chip_cost{
    type: number
    sql:      CASE WHEN ${name} = 'item_purchased' THEN
        (SELECT value.int_value
        FROM UNNEST(${params})
        WHERE key = 'chip_cost')
      END ;;
  }

  dimension: events_item_purchased.coin_cost{
    type: number
    sql:      CASE WHEN ${name} = 'item_purchased' THEN
        (SELECT value.int_value
        FROM UNNEST(${params})
        WHERE key = 'coin_cost')
      END ;;
  }

  dimension: events_item_purchased.product_amount{
    type: number
    sql:      CASE WHEN ${name} = 'item_purchased' THEN
        (SELECT value.int_value
        FROM UNNEST(${params})
        WHERE key = 'product_amount')
      END ;;
  }

  dimension: events_item_purchased.product_category{
    type: string
    sql:      CASE WHEN ${name} = 'item_purchased' THEN
        (SELECT value.string_value
        FROM UNNEST(${params})
        WHERE key = 'product_category')
      END ;;
  }

  dimension: events_level_lock_reached.updated_prompted{
    type: number
    sql:      CASE WHEN ${name} = 'level_lock_reached' THEN
        (SELECT value.int_value
        FROM UNNEST(${params})
        WHERE key = 'updated_prompted')
      END ;;
  }

  dimension: events_level_lock_reached.version{
    type: number
    sql:      CASE WHEN ${name} = 'level_lock_reached' THEN
        (SELECT value.int_value
        FROM UNNEST(${params})
        WHERE key = 'version')
      END ;;
  }

  dimension: events_level_up.chips{
    type: number
    sql:      CASE WHEN ${name} = 'level_up' THEN
        (SELECT value.int_value
        FROM UNNEST(${params})
        WHERE key = 'chips')
      END ;;
  }

  dimension: events_level_up.coins{
    type: number
    sql:      CASE WHEN ${name} = 'level_up' THEN
        (SELECT value.int_value
        FROM UNNEST(${params})
        WHERE key = 'coins')
      END ;;
  }

  dimension: events_level_up.level{
    type: number
    sql:      CASE WHEN ${name} = 'level_up' THEN
        (SELECT value.int_value
        FROM UNNEST(${params})
        WHERE key = 'level')
      END ;;
  }

  dimension: events_level_up.powerups{
    type: number
    sql:      CASE WHEN ${name} = 'level_up' THEN
        (SELECT value.int_value
        FROM UNNEST(${params})
        WHERE key = 'powerups')
      END ;;
  }

  dimension: events_local_notif_clicked.type{
    type: string
    sql:      CASE WHEN ${name} = 'local_notif_clicked' THEN
        (SELECT value.string_value
        FROM UNNEST(${params})
        WHERE key = 'type')
      END ;;
  }

  dimension: events_os_update.previous_os_version{
    type: string
    sql:      CASE WHEN ${name} = 'os_update' THEN
        (SELECT value.string_value
        FROM UNNEST(${params})
        WHERE key = 'previous_os_version')
      END ;;
  }

  dimension: events_out_of_chips_dialog_popped.level{
    type: number
    sql:      CASE WHEN ${name} = 'out_of_chips_dialog_popped' THEN
        (SELECT value.int_value
        FROM UNNEST(${params})
        WHERE key = 'level')
      END ;;
  }

  dimension: events_out_of_chips_dialog_popped.num_chips_left{
    type: number
    sql:      CASE WHEN ${name} = 'out_of_chips_dialog_popped' THEN
        (SELECT value.int_value
        FROM UNNEST(${params})
        WHERE key = 'num_chips_left')
      END ;;
  }

  dimension: events_push_notif_clicked.type{
    type: string
    sql:      CASE WHEN ${name} = 'push_notif_clicked' THEN
        (SELECT value.string_value
        FROM UNNEST(${params})
        WHERE key = 'type')
      END ;;
  }

  dimension: events_push_notif_sent.type{
    type: string
    sql:      CASE WHEN ${name} = 'push_notif_sent' THEN
        (SELECT value.string_value
        FROM UNNEST(${params})
        WHERE key = 'type')
      END ;;
  }

  dimension: events_round_completed.bingos_claimed{
    type: number
    sql:      CASE WHEN ${name} = 'round_completed' THEN
        (SELECT value.int_value
        FROM UNNEST(${params})
        WHERE key = 'bingos_claimed')
      END ;;
  }

  dimension: events_round_completed.bot{
    type: string
    sql:      CASE WHEN ${name} = 'round_completed' THEN
        (SELECT value.string_value
        FROM UNNEST(${params})
        WHERE key = 'bot')
      END ;;
  }

  dimension: events_round_completed.chests_daubed{
    type: number
    sql:      CASE WHEN ${name} = 'round_completed' THEN
        (SELECT value.int_value
        FROM UNNEST(${params})
        WHERE key = 'chests_daubed')
      END ;;
  }

  dimension: events_round_completed.coins_awarded{
    type: number
    sql:      CASE WHEN ${name} = 'round_completed' THEN
        (SELECT value.int_value
        FROM UNNEST(${params})
        WHERE key = 'coins_awarded')
      END ;;
  }

  dimension: events_round_completed.coins_daubed{
    type: number
    sql:      CASE WHEN ${name} = 'round_completed' THEN
        (SELECT value.int_value
        FROM UNNEST(${params})
        WHERE key = 'coins_daubed')
      END ;;
  }

  dimension: events_round_completed.fb_friends{
    type: number
    sql:      CASE WHEN ${name} = 'round_completed' THEN
        (SELECT value.int_value
        FROM UNNEST(${params})
        WHERE key = 'fb_friends')
      END ;;
  }

  dimension: events_round_completed.number_cards{
    type: number
    sql:      CASE WHEN ${name} = 'round_completed' THEN
        (SELECT value.int_value
        FROM UNNEST(${params})
        WHERE key = 'number_cards')
      END ;;
  }

  dimension: events_round_completed.originator{
    type: string
    sql:      CASE WHEN ${name} = 'round_completed' THEN
        (SELECT value.string_value
        FROM UNNEST(${params})
        WHERE key = 'originator')
      END ;;
  }

  dimension: events_round_completed.power_ups_used{
    type: number
    sql:      CASE WHEN ${name} = 'round_completed' THEN
        (SELECT value.int_value
        FROM UNNEST(${params})
        WHERE key = 'power_ups_used')
      END ;;
  }

  dimension: events_round_completed.rematch{
    type: string
    sql:      CASE WHEN ${name} = 'round_completed' THEN
        (SELECT value.string_value
        FROM UNNEST(${params})
        WHERE key = 'rematch')
      END ;;
  }

  dimension: events_round_completed.round{
    type: number
    sql:      CASE WHEN ${name} = 'round_completed' THEN
        (SELECT value.int_value
        FROM UNNEST(${params})
        WHERE key = 'round')
      END ;;
  }

  dimension: events_round_completed.score{
    type: number
    sql:      CASE WHEN ${name} = 'round_completed' THEN
        (SELECT value.int_value
        FROM UNNEST(${params})
        WHERE key = 'score')
      END ;;
  }

  dimension: events_round_completed.social_bot_number{
    type: number
    sql:      CASE WHEN ${name} = 'round_completed' THEN
        (SELECT value.int_value
        FROM UNNEST(${params})
        WHERE key = 'social_bot')
      END ;;
  }

  dimension: events_round_completed.social_bot{
    type: string
    sql:      CASE WHEN ${name} = 'round_completed' THEN
        (SELECT value.string_value
        FROM UNNEST(${params})
        WHERE key = 'social_bot')
      END ;;
  }

  dimension: events_round_completed.squares_daubed{
    type: number
    sql:      CASE WHEN ${name} = 'round_completed' THEN
        (SELECT value.int_value
        FROM UNNEST(${params})
        WHERE key = 'squares_daubed')
      END ;;
  }

  dimension: events_round_completed.type_of_game{
    type: string
    sql:      CASE WHEN ${name} = 'round_completed' THEN
        (SELECT value.string_value
        FROM UNNEST(${params})
        WHERE key = 'type_of_game')
      END ;;
  }

  dimension: events_round_completed.won{
    type: string
    sql:      CASE WHEN ${name} = 'round_completed' THEN
        (SELECT value.string_value
        FROM UNNEST(${params})
        WHERE key = 'won')
      END ;;
  }

  dimension: events_round_completed.xp_awarded{
    type: number
    sql:      CASE WHEN ${name} = 'round_completed' THEN
        (SELECT value.int_value
        FROM UNNEST(${params})
        WHERE key = 'xp_awarded')
      END ;;
  }

  dimension: events_select_content.content_type{
    type: string
    sql:      CASE WHEN ${name} = 'select_content' THEN
        (SELECT value.string_value
        FROM UNNEST(${params})
        WHERE key = 'content_type')
      END ;;
  }

  dimension: events_select_content.item_id{
    type: string
    sql:      CASE WHEN ${name} = 'select_content' THEN
        (SELECT value.string_value
        FROM UNNEST(${params})
        WHERE key = 'item_id')
      END ;;
  }

  dimension: events_server_error_fatal.code{
    type: number
    sql:      CASE WHEN ${name} = 'server_error_fatal' THEN
        (SELECT value.int_value
        FROM UNNEST(${params})
        WHERE key = 'code')
      END ;;
  }

  dimension: events_server_error_single.code{
    type: number
    sql:      CASE WHEN ${name} = 'server_error_single' THEN
        (SELECT value.int_value
        FROM UNNEST(${params})
        WHERE key = 'code')
      END ;;
  }

  dimension: events_server_error_single.message{
    type: string
    sql:      CASE WHEN ${name} = 'server_error_single' THEN
        (SELECT value.string_value
        FROM UNNEST(${params})
        WHERE key = 'message')
      END ;;
  }

  dimension: events_spend_virtual_currency.item_name{
    type: string
    sql:      CASE WHEN ${name} = 'spend_virtual_currency' THEN
        (SELECT value.string_value
        FROM UNNEST(${params})
        WHERE key = 'item_name')
      END ;;
  }

  dimension: events_spend_virtual_currency.value{
    type: number
    sql:      CASE WHEN ${name} = 'spend_virtual_currency' THEN
        (SELECT value.int_value
        FROM UNNEST(${params})
        WHERE key = 'value')
      END ;;
  }

  dimension: events_spend_virtual_currency.virtual_currency_name{
    type: string
    sql:      CASE WHEN ${name} = 'spend_virtual_currency' THEN
        (SELECT value.string_value
        FROM UNNEST(${params})
        WHERE key = 'virtual_currency_name')
      END ;;
  }

  dimension: events_store_purchase_saved.success{
    type: number
    sql:      CASE WHEN ${name} = 'store_purchase_saved' THEN
        (SELECT value.int_value
        FROM UNNEST(${params})
        WHERE key = 'success')
      END ;;
  }

  dimension: events_store_purchase_started.product_id{
    type: string
    sql:      CASE WHEN ${name} = 'store_purchase_started' THEN
        (SELECT value.string_value
        FROM UNNEST(${params})
        WHERE key = 'product_id')
      END ;;
  }

  dimension: events_unlock_achievement.name{
    type: string
    sql:      CASE WHEN ${name} = 'unlock_achievement' THEN
        (SELECT value.string_value
        FROM UNNEST(${params})
        WHERE key = 'name')
      END ;;
  }

  dimension: events_use_time_extender.num_extends{
    type: number
    sql:      CASE WHEN ${name} = 'use_time_extender' THEN
        (SELECT value.int_value
        FROM UNNEST(${params})
        WHERE key = 'num_extends')
      END ;;
  }

  dimension: events_user_engagement.engagement_time_msec{
    type: number
    sql:      CASE WHEN ${name} = 'user_engagement' THEN
        (SELECT value.int_value
        FROM UNNEST(${params})
        WHERE key = 'engagement_time_msec')
      END ;;
  }

  dimension: events_user_logged_in.with_facebook{
    type: string
    sql:      CASE WHEN ${name} = 'user_logged_in' THEN
        (SELECT value.string_value
        FROM UNNEST(${params})
        WHERE key = 'with_facebook')
      END ;;
  }
}

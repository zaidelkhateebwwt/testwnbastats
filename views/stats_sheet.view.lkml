view: stats_sheet {
  sql_table_name: `wnba_statistics.stats_sheet` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: assists {
    type: number
    sql: ${TABLE}.assists ;;
  }
  dimension: blocks {
    type: number
    sql: ${TABLE}.blocks ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }
  dimension_group: game {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.game_date ;;
  }
  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }
  dimension: ip_address {
    type: string
    sql: ${TABLE}.ip_address ;;
  }
  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }
  dimension: minutes_played {
    type: number
    sql: ${TABLE}.minutes_played ;;
  }
  dimension: player_id {
    type: number
    sql: ${TABLE}.player_id ;;
  }
  dimension: player_name {
    type: string
    sql: ${TABLE}.player_name ;;
  }
  dimension: points_scored {
    type: number
    sql: ${TABLE}.points_scored ;;
  }
  dimension: rebounds {
    type: number
    sql: ${TABLE}.rebounds ;;
  }
  dimension: steals {
    type: number
    sql: ${TABLE}.steals ;;
  }
  dimension: team_name {
    type: string
    sql: ${TABLE}.team_name ;;
  }
  measure: count {
    type: count
    drill_fields: [id, last_name, team_name, player_name, first_name]
  }
}

include: "/views/extend_base.view"

view: hit_bike {
  extends: [extend_base]
  sql_table_name: "NARA_CRIME"."hit_bike" ;;

  dimension: damage {
    label: "現金以外の主な被害品"
    type: string
    sql: ${TABLE}."damage" ;;
  }

  dimension: lockup {
    label: "施錠関係"
    type: yesno
    sql: ${TABLE}."lockup" = 'キーあり' ;;
  }

  dimension: antitheft_device {
    label: "盗難防止装置の有無"
    type: yesno
    sql: ${TABLE}."antitheft_device" = 'あり' ;;
  }

}

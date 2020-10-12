include: "/views/extend_base.view"

view: aim_parts {
  extends: [extend_base]
  sql_table_name: "NARA_CRIME"."aim_parts" ;;

  dimension: damage {
    label: "現金以外の主な被害品"
    type: string
    sql: ${TABLE}."damage" ;;
  }

}

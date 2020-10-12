include: "/views/extend_base.view"

view: aim_automat {
  extends: [extend_base]
  sql_table_name: "NARA_CRIME"."aim_automat" ;;

  dimension: damage_cash {
    label: "現金被害の有無"
    type: yesno
    sql: ${TABLE}."damage_cash" = 'あり' ;;
  }

}

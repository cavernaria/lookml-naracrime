include: "/views/extend_base.view"

view: car_break_in {
  extends: [extend_base]
  sql_table_name: "NARA_CRIME"."car_break_in" ;;

  dimension: damage_cash {
    label: "現金被害の有無"
    type: yesno
    sql: ${TABLE}."damage_cash" = 'あり' ;;
  }

  dimension: lockup {
    label: "施錠関係"
    type: yesno
    sql: ${TABLE}."lockup" = '施錠した' ;;
  }

}

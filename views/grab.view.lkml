include: "/views/extend_base.view"

view: grab {
  extends: [extend_base]
  sql_table_name: "NARA_CRIME"."grab" ;;

  dimension: damage_cash {
    label: "現金被害の有無"
    type: yesno
    sql: ${TABLE}."damage_cash" = 'あり' ;;
  }

  dimension: age_aggrieved {
    label: "被害者の年齢"
    type: string
    sql: ${TABLE}."age_aggrieved" ;;
  }

  dimension: sex_aggrieved {
    label: "被害者の性別"
    type: string
    sql: ${TABLE}."sex_aggrieved" ;;
  }

}

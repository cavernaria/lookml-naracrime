include: "/views/extend_base.view"

view: hit_bicycle {
  extends: [extend_base]
  sql_table_name: "NARA_CRIME"."hit_bicycle" ;;

  dimension: age_aggrieved {
    label: "被害者の年齢"
    type: string
    sql: ${TABLE}."age_aggrieved" ;;
  }

  dimension: job_aggrieved {
    label: "被害者の職業"
    type: string
    sql: ${TABLE}."job_aggrieved" ;;
  }

  dimension: lockup {
    label: "施錠関係"
    type: yesno
    sql: ${TABLE}."lockup" = '施錠した' ;;
  }

}

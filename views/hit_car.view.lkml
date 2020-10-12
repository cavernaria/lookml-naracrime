include: "/views/hit_bike.view"

view: hit_car {
  extends: [hit_bike]
  sql_table_name: "NARA_CRIME"."hit_car" ;;
}

connection: "cm_snowflake"

include: "/views/*.view"

datagroup: cm_tamai_naracrime_default_datagroup {
  max_cache_age: "1 hour"
}

persist_with: cm_tamai_naracrime_default_datagroup

explore: hit_car_A {
  from: hit_car
  label: "自動車盗"
}

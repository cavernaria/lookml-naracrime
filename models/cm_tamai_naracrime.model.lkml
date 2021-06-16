connection: "cm_snowflake"

include: "/views/*.view"

datagroup: cm_tamai_naracrime_default_datagroup {
  max_cache_age: "1 hour"
}

persist_with: cm_tamai_naracrime_default_datagroup

explore: basic_info {
  label: "奈良県犯罪情報（基本）"
}

explore: hit_bicycle {
  label: "自転車盗"
}

explore: hit_car {
  label: "自動車盗"
}

explore: hit_bike {
  label: "オートバイ盗"
}

explore: aim_automat {
  label: "自動販売機ねらい"
}

explore: error_okosuze {
  from: aim_parts
  label: "部品ねらい"
}

explore: car_break_in {
  label: "車上ねらい"
}

explore: grab {
  label: "ひったくり"
}

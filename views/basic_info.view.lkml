include: "/views/extend_base.view"

view: basic_info {
  extends: [extend_base]

  derived_table: {
    sql: SELECT "RecordID","deception","precinct","police_booth","municipality","town","datetime_occurrence","attribute_occurrence","Latitude","Longitude"
      FROM "NARA_CRIME"."aim_parts"
      UNION
      SELECT "RecordID","deception","precinct","police_booth","municipality","town","datetime_occurrence","attribute_occurrence","Latitude","Longitude"
      FROM "NARA_CRIME"."grab"
      union
      SELECT "RecordID","deception","precinct","police_booth","municipality","town","datetime_occurrence","attribute_occurrence","Latitude","Longitude"
      FROM "NARA_CRIME"."aim_automat"
      union
      SELECT "RecordID","deception","precinct","police_booth","municipality","town","datetime_occurrence","attribute_occurrence","Latitude","Longitude"
      FROM "NARA_CRIME"."hit_bike"
      union
      SELECT "RecordID","deception","precinct","police_booth","municipality","town","datetime_occurrence","attribute_occurrence","Latitude","Longitude"
      FROM "NARA_CRIME"."hit_bicycle"
      union
      SELECT "RecordID","deception","precinct","police_booth","municipality","town","datetime_occurrence","attribute_occurrence","Latitude","Longitude"
      FROM "NARA_CRIME"."hit_car"
      union
      SELECT "RecordID","deception","precinct","police_booth","municipality","town","datetime_occurrence","attribute_occurrence","Latitude","Longitude"
      FROM "NARA_CRIME"."car_break_in"
       ;;
  }

  dimension: deception_error {
    label: "手口"
    type: string
    sql: ${TABLE}."deception" ;;
    link: {
      label: "詳細ダッシュボードへ"
      url: "
      {% if value == '自転車盗' %}
      /dashboards/79?市区町村= {{ basic_info.municipality._value }}&町丁目= {{ basic_info.town._value }}
      {% elsif value == 'ひったくり' %}
      /dashboards/73?市区町村= {{ basic_info.municipality._value }}&町丁目= {{ basic_info.town._value }}
      {% elsif value == 'オートバイ盗' %}
      /dashboards/78?市区町村= {{ basic_info.municipality._value }}&町丁目= {{ basic_info.town._value }}
      {% elsif value == '自動販売機ねらい' %}
      /dashboards/78?市区町村= {{ basic_info.municipality._value }}&町丁目= {{ basic_info.town._value }}
      {% elsif value == '車上ねらい' %}
      /dashboards/76?市区町村= {{ basic_info.municipality._value }}&町丁目= {{ basic_info.town._value }}
      {% elsif value == '自動車盗' %}
      /dashboards/77?市区町村= {{ basic_info.municipality._value }}&町丁目= {{ basic_info.town._value }}
      {% elsif value == '部品ねらい' %}
      /dashboards/75?市区町村= {{ basic_info.municipality._value }}&町丁目= {{ basic_info.town._value }}
      {% endif %}
      "
    }
  }

#   dimension: deception {
#     label: "手口"
#     type: string
#     sql: ${TABLE}."deception" ;;
#     link: {
#       label: "詳細ダッシュボードへ"
#       url: "/dashboards/79?発生場所={{ basic_info.location._value }}"
#     }
#   }

}

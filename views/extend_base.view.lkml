view: extend_base {
  extension: required

  dimension: record_id {
    primary_key: yes
    hidden: yes
    type: number
    sql: ${TABLE}."RecordID" ;;
  }

  dimension: deception {
    label: "手口"
    type: string
    sql: ${TABLE}."deception" ;;
  }

  dimension: precinct {
    label: "管轄警察署(発生地)"
    type: string
    sql: ${TABLE}."precinct" ;;
  }

  dimension: police_booth {
    label: "管轄交番・駐在所(発生地)"
    type: string
    sql: ${TABLE}."police_booth" ;;
  }

  dimension: municipality {
    label: "市区町村(発生地)"
    type: string
    sql: ${TABLE}."municipality" ;;
  }

  dimension: town {
    label: "町丁目(発生地)"
    type: string
    sql: ${TABLE}."town" ;;
  }

  dimension_group: datetime_occurrence {
    label: "発生年月日時(始期)"
    type: time
    sql: ${TABLE}."datetime_occurrence" ;;
  }

  dimension: attribute_occurrence {
    label: "発生場所の属性"
    type: string
    sql: ${TABLE}."attribute_occurrence" ;;
  }

  dimension: latitude {
    hidden: yes
    type: number
    sql: ${TABLE}."Latitude" ;;
  }

  dimension: longitude {
    hidden: yes
    type: number
    sql: ${TABLE}."Longitude" ;;
  }

  dimension: location {
    label: "発生場所"
    type: location
    sql_latitude: ${latitude} ;;
    sql_longitude: ${longitude} ;;
  }

  measure: count {
    label: "件数"
    type: count
    drill_fields: [detail*]
  }

  set: detail {
    fields: [
      datetime_occurrence,
      deception,
      municipality,
      town,
      attribute_occurrence,
      location
    ]
  }

}

with islands as(
  select DISTINCT NVL(island, 'Unknown_Island') ISL_NAME from "FIVETRAN_INTERVIEW_DB"."GOOGLE_SHEETS"."COVID_19_INDONESIA_KISHORE_KUMAR"
)
select * from islands

with province as(
  select distinct province from "FIVETRAN_INTERVIEW_DB"."GOOGLE_SHEETS"."COVID_19_INDONESIA_KISHORE_KUMAR"
where province is not null
)
select * from province
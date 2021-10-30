with locations as (
    select DISTINCT NVL(location, 'Unknown') LOC_NAME from "FIVETRAN_INTERVIEW_DB"."GOOGLE_SHEETS"."COVID_19_INDONESIA_KISHORE_KUMAR"
)
select * from locations
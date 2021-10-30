{{ config(
    materialized='table'
)}}

with country_cases as (
    select to_date(date, 'mm/dd/yyyy') date, location, nvl(island, 'Unknown_islan') island,province,  sum(population) population , sum(TOTAL_ACTIVE_CASES) active_cases, sum(total_recovered) Recovered, sum(NEW_DEATHS) deaths  
      from "FIVETRAN_INTERVIEW_DB"."GOOGLE_SHEETS"."COVID_19_INDONESIA_KISHORE_KUMAR"
      Where TOTAL_ACTIVE_CASES > 0
    group by date, location, island, province
)
select * from country_cases
order by date, location desc
with growth_factor as
(

    select province, sum(GROWTH_FACTOR_OF_NEW_DEATHS)/count(1) deaths_growth_factor, sum(GROWTH_FACTOR_OF_NEW_CASES)/count(1) new_cases_growth_factor from "FIVETRAN_INTERVIEW_DB"."GOOGLE_SHEETS"."COVID_19_INDONESIA_KISHORE_KUMAR" 
    group by province
)
select * from growth_factor
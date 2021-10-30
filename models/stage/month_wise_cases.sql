with month_wise_cases as(
select trunc(to_date(date, 'mm/dd/yyyy'), 'mm') month, sum(total_active_cases) active_cases 
  from "FIVETRAN_INTERVIEW_DB"."GOOGLE_SHEETS"."COVID_19_INDONESIA_KISHORE_KUMAR"
 group by trunc(to_date(date, 'mm/dd/yyyy'), 'mm')
order by 1 desc)
select * from month_wise_cases
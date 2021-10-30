with province_cases as 
(
  select nvl(province, 'Unknow_province') province, count(active_cases)  active_cases from {{ ref('country_cases')}}
  group by province
)
select * from province_cases

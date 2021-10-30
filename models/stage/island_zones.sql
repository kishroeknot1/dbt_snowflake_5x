with country_cases as
(
    select * from {{ ref('country_cases')}}
),
province as
(
    select * from {{ ref('province')}}
)
select island, p.province, case  WHEN active_cases > 0 and active_cases <= 10000 then 'GREEN'
                                WHEN active_cases > 10000 and active_cases <= 100000 THEN 'ORANGE'
                                WHEN active_cases > 100000 THEN 'RED' END ZONE_TYPE
                           from country_cases cc, province p
 where  cc.province = p.province
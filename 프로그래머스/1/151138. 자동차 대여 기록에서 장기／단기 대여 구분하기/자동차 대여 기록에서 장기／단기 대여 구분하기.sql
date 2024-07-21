-- 코드를 입력하세요
SELECT history_id, car_id,
    date_format(start_date,'20%y-%m-%d') as start_date,
    date_format(end_date,'20%y-%m-%d') as end_date,
    if(datediff(end_date,start_date)+1 >= 30, "장기 대여","단기 대여") as rent_type
from car_rental_company_rental_history
where start_date between "2022-09-01" and "2022-09-30"
order by history_id desc

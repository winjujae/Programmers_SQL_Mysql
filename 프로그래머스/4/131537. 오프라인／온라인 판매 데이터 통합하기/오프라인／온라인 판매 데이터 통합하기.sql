-- 코드를 입력하세요
SELECT date_format(sales_date,'20%y-%m-%d'), product_id, user_id, sales_amount
from (
    select sales_date, product_id, user_id, sales_amount
    from online_sale
    where sales_date between "2022-03-01" and "2022-03-31"
    union all
    select sales_date, product_id, null as user_id, sales_amount
    from offline_sale
    where sales_date between "2022-03-01" and "2022-03-31"
) as combine
order by sales_date, product_id, user_id
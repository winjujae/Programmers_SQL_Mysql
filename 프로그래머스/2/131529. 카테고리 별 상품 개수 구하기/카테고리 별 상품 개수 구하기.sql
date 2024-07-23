-- 코드를 입력하세요
with temp as (
    select substring(product_code,1,2) as category,
        count(product_id) as products
    from product
    group by category
)

SELECT category, products
from temp

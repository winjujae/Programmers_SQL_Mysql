-- 코드를 입력하세요
SELECT a.flavor
from first_half a
    left join icecream_info b
    on a.flavor = b.flavor
where a.total_order > 3000 and b.ingredient_type like "fruit%"
order by a.total_order desc

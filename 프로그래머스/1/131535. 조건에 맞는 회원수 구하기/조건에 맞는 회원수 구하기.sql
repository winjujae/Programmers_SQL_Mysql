-- 코드를 입력하세요
SELECT count(user_id) as users
from user_info
where age >= 20 and age <= 29 and joined like '2021%'
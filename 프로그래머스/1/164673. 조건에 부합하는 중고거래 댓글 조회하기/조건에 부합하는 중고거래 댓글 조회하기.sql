-- 코드를 입력하세요
SELECT a.title, a.board_id, b.reply_id, b.writer_id,b.contents, date_format(b.created_date,'20%y-%m-%d') as created_date
from used_goods_board a
    inner join used_goods_reply b
    on a.board_id = b.board_id 
where a.created_date between "2022-10-01" and "2022-10-31"
order by b.created_date, a.title
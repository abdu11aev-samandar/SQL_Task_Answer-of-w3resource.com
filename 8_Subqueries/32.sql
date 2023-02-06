SELECT avg(i.pro_price) as Avg, c.com_name
from company_mast c,
     item_mast i
where i.pro_com = c.com_id
group by c.com_name
having avg(i.pro_price) >= 350
order by avg asc;
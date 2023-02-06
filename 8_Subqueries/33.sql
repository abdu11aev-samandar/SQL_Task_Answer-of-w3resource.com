SELECT max(i.pro_price) as Max, c.com_name
from company_mast c,
     item_mast i
where i.pro_com = c.com_id
group by c.com_name
order by max asc;
SELECT avg(pro_price), c.com_name
from item_mast i,
     company_mast c
where i.pro_com = c.com_id
group by c.com_name;
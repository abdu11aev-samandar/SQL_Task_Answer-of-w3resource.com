SELECT com_name, avg(pro_price)
from item_mast i
         join company_mast c
              on c.com_id = i.pro_com
group by c.com_id
having avg(pro_price) >= 350
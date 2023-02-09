SELECT com_name, max(pro_price)
from item_mast i
         join company_mast c
              on c.com_id = i.pro_com
group by c.com_id
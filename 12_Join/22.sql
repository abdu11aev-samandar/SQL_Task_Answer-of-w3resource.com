SELECT i.pro_name, i.pro_price, c.com_name
from item_mast i
         join company_mast c
              on c.com_id = i.pro_com
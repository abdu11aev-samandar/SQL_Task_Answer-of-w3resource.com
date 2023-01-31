SELECT pro_name, pro_price
from item_mast
where pro_price >= 250
order by pro_price desc, pro_name asc;
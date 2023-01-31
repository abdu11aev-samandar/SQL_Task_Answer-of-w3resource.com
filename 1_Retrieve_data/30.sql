SELECT pro_name, pro_price
from item_mast
where pro_price =
      (SELECT min(pro_price) from item_mast);
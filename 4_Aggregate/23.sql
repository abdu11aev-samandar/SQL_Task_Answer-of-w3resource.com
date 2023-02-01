SELECT avg(pro_price) as AvgPrice, pro_com as CompanyId
from item_mast
group by pro_com
order by avgprice desc;
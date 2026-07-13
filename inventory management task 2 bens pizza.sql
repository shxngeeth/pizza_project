select * from (SELECT 
o.item_id,
i.sku,
i.item_name,
r.ing_id,
ing.ing_name,
r.quantity AS recipe_quantity,
sum(o.quantity) as order_quantity,
ing.ing_weight,
ing.ing_price
from 
orders o
left join item i on o.item_id=i.item_id
left join recipe r ON i.sku=r.recipe_id
left join ingredient ing ON ing.ing_id=r.ing_id
group by 
o.item_id, 
i.sku,
i.item_name,
r.ing_id,
r.quantity,
ing.ing_name,
ing.ing_weight,
ing.ing_price) s1
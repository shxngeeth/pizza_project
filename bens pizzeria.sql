SELECT 
o.order_id,
i.item_price,
o.quantity,
i.item_cat,
i.item_name,
o.created_at,
a.delivery_address1,
a.delivery_address2,
a.delivery_city,
a.delivery_zipcode,
o.delivery
FROM
orders o
LEFT JOIN item i ON o.item_id=i.item_id
LEFT JOIN addreaa a ON o.add_id=a.add_id

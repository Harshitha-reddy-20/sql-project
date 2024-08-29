Create view Order_view as
select
    u.username,
    o.order_id,
    o.ordered_date,
    p.product_name,
    od.quantity as product_quantity,
    od.price as product_price
from 
    Orders_d o
join 
    Users u ON o.user_id = u.user_id
join 
    Orderdetails od ON o.order_id = od.order_id
join 
    Products p ON od.product_id = p.product_id;
    
    select * from order_view;
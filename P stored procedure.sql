/*stored procedure*/ 

delimiter //
create procedure GetUserOrder(in userId int)
begin
    select 
        u.username,
        o.order_id,
        o.ordered_date,
        o.total_amount,
        p.product_name,
        od.price as product_price
    from 
        Orders_d o
    join 
        Users u on o.user_id = u.user_id
    join 
        Orderdetails od on o.order_id = od.order_id
    join 
        Products p on od.product_id = p.product_id
    where
        u.user_id = userId;
end //

call GetUserOrder(1);
use project;

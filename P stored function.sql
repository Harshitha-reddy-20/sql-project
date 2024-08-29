/*stored function*/

delimiter //
create function GetTotalAmountSpent(userId INT) 
returns decimal(10, 2)
deterministic
begin
    declare totalAmount decimal(10, 2);
    select 
        SUM(o.total_amount) into totalAmount
    from
        Orders_d o
    where 
        o.user_id = userId;
    return totalAmount;
END //


select GetTotalAmountSpent(2);

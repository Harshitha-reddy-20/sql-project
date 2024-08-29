/*Trigger*/ 
 
delimiter //
create trigger before_price_update
before update on Products
for each row
begin
    if new.price < 100 then
	set new.price = 100;
    end if;
end //

update Products 
set price = 75000 
where product_id = 101;

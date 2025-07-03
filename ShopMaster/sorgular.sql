
Create View view1
As
Select name, category_id, comment from Product inner join Review on Product.id = Review.product_id


----------------------------------------------------------------------------------------------------------


do $$
declare customer_name text;
		address_type text;
begin
customer_name=(select name from customer where customer.id=12);
address_type=(select type from address where address.id=1002);
raise notice 'İsim: %', customer_name;
raise notice 'Adres Başlık: %', address_type;
end $$


----------------------------------------------------------------------------------------------------------


 SELECT product.name,
    product.category_id,
    review.comment,
	category.name
   FROM product
     JOIN review ON product.id = review.product_id
     JOIN category ON product.category_id = category.id	 
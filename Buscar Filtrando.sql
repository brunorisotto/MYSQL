# BUSCAR FILTRANDO ( WHERE)
# buscar donde esto = aquello;
select * from sakila.actor where first_name = 'MATTHEW';

select * from sakila.city where city='London';

select * from sakila.customer where store_id=1;

select * from sakila.inventory where film_id = 50;
select distinct amount from sakila.payment where amount = 11.99;
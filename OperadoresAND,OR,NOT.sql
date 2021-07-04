#OPERADOR AND
select * from sakila.country where country = 'Argentina' and country_id=6;
#OPERADOR OR
select * from sakila.country where country = 'Algeria' or country_id=12;
# OPERADOR NOT
select * from sakila.category where not name='Action';
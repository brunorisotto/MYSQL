# PRACTICO 58

# USA LA FUNCION CONCAT() EN LA TABLA CUSTOMER Y HAS UN CONCATENADO ENTRE FIRST_NAME, LAST_NAME Y EMAIL

select * from sakila.customer;

select
concat(first_name,' ',last_name,'        Email -> ',email)
from sakila.customer;
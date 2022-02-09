#PRACTICO 57

# USA LA FUNCION CHAR_LENGTH() EN LA TABLA CUSTOMER DE BASE DE DATOS SAKILA Y CALCULA LA LONGITUD DE LA COLUMNA EMAIL

select * from sakila.customer;

select 
customer_id as 'ID',
email, char_length(email)
from sakila.customer group by 1,2,3;
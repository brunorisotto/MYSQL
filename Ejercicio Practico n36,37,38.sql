# CONSULTA TABLA ADDRESS EN SAKILA#
select * from sakila.address;
select * from sakila.country;

#REALIZA INNER JOIN CON LAS TABLAS CITY Y COUNTRY#
select
a.address,
c.city,
co.country
from sakila.address a
inner join sakila.city c on (a.city_id = c.city_id)
inner join sakila.country co on (c.country_id = co.country_id);

#CONSULTA TABLA CUSTOMER EN SAKILA#
select * from sakila.customer;
select * from sakila.address;
#REALIZA UN LEFT JOIN CON LAS TABLAS STORE Y ADDRESS Y MOSTRAR COLUMNAS FIRST_NAME, ADDRESS, STORE_ID#
select
cu.first_name,
a.address,
s.store_id
from sakila.customer cu
left join sakila.store s on (cu.store_id = s.store_id)
left join sakila.address a on (cu.address_id = a.address_id);

# CONSULTA A TABLA RENTAL EN SAKILA, REALIZA UN INNER JOIN CON LA TABLA STAFF#
# MOSTRAR LAS COLUMNAS RENTAL_ID Y FIRST_NAME #
select * from sakila.rental;
select * from sakila.staff;
select
r.rental_id,
s.first_name
from sakila.rental r
inner join sakila.staff s on (r.staff_id=s.staff_id);




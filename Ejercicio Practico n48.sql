#PRACTICO 48
#CONSULTA A TABLA RENTAL DE LA BASE DE DATOS SAKILA
select * from sakila.rental;


# REALIZA UN MAX DE LA COLUMNA RENTAL_DATE

select customer_id, max(rental_date) from sakila.rental GROUP BY customer_id;
#si no agregamos group by, no nos hace un listado de todos los customer_id#

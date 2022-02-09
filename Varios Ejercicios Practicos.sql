# ¿ QUIEN HA VENDIDO MAS DEL STAFF EN AGOSTO DE 2005 ?

select
s.first_name,
s.last_name,
sum(p.amount) as 'Total Amount'
from sakila.staff s
inner join sakila.payment p on s.staff_id = p.staff_id and p.payment_date like '2005-08%'
group by 1,2;

# HAGA UNA LISTA DE CADA PELICULA Y EL NUMERO DE ACTORES QUE FIGURAN EN ESA PELICULA, UTILIZA TABLAS FILM_ACTOR Y FILM DE BD SAKILA
select * from sakila.film_actor;
select * from sakila.film;

select
b.title,
count(actor_id) as 'Contador de actores'
from sakila.film_actor a
inner join sakila.film b on a.film_id = b.film_id
group by 1;

# ¿ CUANTAS COPIAS DE LA PELICULA HUNCHBACK IMPOSSIBLE EXISTEN EN EL SISTEMA DE INVENTARIO?
select
title,
count(title) as 'Copias disponibles'
from sakila.film
inner join sakila.inventory on film.film_id = inventory.film_id
where title = 'Hunchback Impossible';

# ANOTE EL TOTAL PAGADO POR CADA CLIENTE. LISTAR LOS CLIENTES ALFABETICAMENTE POR APELLIDO

select
first_name,
last_name,
sum(amount) as 'TOTAL PAGADO POR CLIENTE'
from sakila.payment
inner join sakila.customer on payment.customer_id = customer.customer_id
group by 1,2
order by last_name;
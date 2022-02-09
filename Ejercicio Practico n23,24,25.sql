#CONSULTA TABLA PAYMENT EN SAKILA#
select * from sakila.payment

# FILTRA INFORMACION DONDE AMOUNT ESTE ENTRE 2,99 Y 4,99, STAD_ID = 2, CUSTOMER_ID SEA 1 Y 2#
where (amount between 2.99 and 4.99) and staff_id = 2 and customer_id in (1,2);

#CONSULTA TABLA ADDRESS DE SAKILA#
select * from sakila.address

#FILTRA INFORMACION DONDE CITY_ID ESTE ENTRE 300 Y 350#
where city_id between 300 and 350;

#CONSULTA TABLA FILM DE SAKILA#
select * from sakila.film

#FILTRA INFORMACION DONDE RENTAL_RATE ESTE ENTRE 0.99 Y 2.99, LENGTH SEA MENOR IGUAL A 50 Y REPLACEMENT_COST SEA MENOR DE 20 #
where (rental_rate between 0.99 and 2.99) and length <= 50 and replacement_cost < 20;
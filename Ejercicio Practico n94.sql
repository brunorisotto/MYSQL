# PRACTICO 94

# USA LA FUNCION ALTER TABLE Y AGREGA LA COLUMNA CATEGORIA A LA TABLA FILM_TEXT, LLENA LA COLUMNA DE LOS PRIMEROS 10 FILM_ID

select * from sakila.film_text;

ALTER TABLE sakila.film_text
ADD COLUMN category char(20);

update sakila.film_text
set category = 'Animation'
where film_id = -1;

update sakila.film_text
set category = 'Drama'
where film_id = 1;

update sakila.film_text
set category = 'Action'
where film_id = 2;

update sakila.film_text
set category = 'Astronomy'
where film_id = 3;

update sakila.film_text
set category = 'Action'
where film_id = 4;

update sakila.film_text
set category = 'documentary'
where film_id = 5;

update sakila.film_text
set category = 'Action'
where film_id = 6;

update sakila.film_text
set category = 'Action'
where film_id = 7;

update sakila.film_text
set category = 'Drama'
where film_id = 8;

update sakila.film_text
set category = 'Terror'
where film_id = 9;

select * from sakila.film_text;
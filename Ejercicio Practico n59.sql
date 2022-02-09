# PRACTICO 59

# USA LA FUNCION CONCAT_WS() EN LA TABLA FILM Y HAS UN CONCATENADO DE TODAS LAS COLUMNAS

select * from sakila.film;

select
concat_ws(' - ',film_id,title,description,release_year,language_id,original_language_id,rental_duration,rental_duration)
from sakila.film;
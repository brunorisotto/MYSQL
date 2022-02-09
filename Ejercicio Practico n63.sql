# PRACTICO 63

/* 
USA LA FUNCION CASE EN A TABLA SAKILA.FILM Y CACULA 3 CASOS:
1) SI RENTAL_RATE ES MENOR QUE 1, INGRESA 'PELICULA MALA'
2) SJ LA CALIFICACION ESTA DENTRO DE 1 Y 3 MOSTRAR 'PELICULA BUENA'
3) SI ES MAYOR QUE MUESTRE 'PEICULA EXCELENTE'
*/

select * from sakila.film;

select
title,
rental_rate,
CASE
	WHEN rental_rate < 1 THEN 'PELICULA MALA'
    WHEN rental_rate BETWEEN 1 AND 3 THEN 'PELICULA BUENA'
    ELSE 'PELICULA EXCELENTE'
END AS Comentario
from sakila.film;
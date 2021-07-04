/*Ejercicio práctico #15

Has terminado la Sección 4 AND, OR, NOT. Ahora
 es momento de poner en práctica lo aprendido realizando la siguiente consulta.
 Las respuestas estarán al final de la sección.*/

#Consulta la tabla rental de la base de datos sakila.
select * from sakila.rental;
#Filtra la información donde staff_id no sea 1, customer_id sea mayor a 250 y inventory_id sea menor de 100.
select*from sakila.rental where staff_id <> 1 and customer_id > 250 and inventory_id< 100;
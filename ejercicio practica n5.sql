/*Ejercicio 5
Ejercicio práctico #5*/

#Consulta la tabla payment de la base de datos sakila.
select * from sakila.payment;



#¿Cuál es la cantidad mas baja(00.00) y mas alta(11.99) de la columna amount?
select * from sakila.payment order by amount ASC;

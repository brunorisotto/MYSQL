/*Ejercicio práctico #10

Has terminado la Sección 3 WHERE. 
Ahora es momento de poner en práctica lo aprendido realizando la siguiente consulta.
 Las respuestas estarán al final de la sección.*/

#Consulta la tabla payment de la base de datos sakila.
select * from sakila.payment;

#Filtra la información donde amount sea mayor a 0.99.
select *from sakila.payment where amount > 0.99;
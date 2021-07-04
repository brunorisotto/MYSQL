/*Ejercicio práctico #9

Has terminado la Sección 3 WHERE. Ahora es momento de poner en práctica
 lo aprendido realizando la siguiente consulta. 
 Las respuestas estarán al final de la sección.*/
 
#Consulta description, release_year de la tabla film de la base de datos sakila.
select description,release_year from sakila.film;


#Filtra la información donde title sea IMPACT ALADDIN
select *from sakila.film where title='IMPACT ALADDIN';
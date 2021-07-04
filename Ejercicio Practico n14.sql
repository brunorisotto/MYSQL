/*Has terminado la Sección 4 AND, OR, NOT. 
Ahora es momento de poner en práctica lo aprendido realizando la siguiente consulta.
 Las respuestas estarán al final de la sección.*/

#Consulta la tabla payment de la base de datos sakila.
select * from sakila.payment;
#Filtra la información donde customer_id sea igual a 36, amount sea mayor a 0.99 y staff_id sea igual a 1.
select * from sakila.payment where customer_id=36 and amount > 0.99 and staff_id=1;
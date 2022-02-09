#PRACTICO 51

# CONSULTA LA TABLA ACTOR DE SAKILA
select * from sakila.actor;


# REALIZA UN COUNT DE LAST_NAME y MOSTRAR CUANDO EL COUNT SEA MAYOR DE 2
select last_name, count(*)
from sakila.actor
group by 1
having count(*) > 2


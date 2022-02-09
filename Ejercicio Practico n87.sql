# PRACTICO 87

# USA LA FUNCION UPDATE Y AGREGA UN REGISTRO A LA TABLA ACTOR

select * from sakila.actor;

update sakila.actor
set first_name = 'WILLY'
where actor_id = 202;

select * from sakila.actor;


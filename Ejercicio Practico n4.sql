#Consulta store_id, first_name y last_name de la tabla customer de la base de datos sakila.
select * from sakila.customer;


#Cambia el nombre de las columnas store_id, first_name y last_name a Tienda, Nombre y Apellido respectivamente.
select store_id as Tienda, first_name as Nombre,last_name as Apellido from sakila.customer;
#Ordena de manera descendente la columna Apellido
select distinct(last_name) from sakila.customer;
select * from sakila.customer order by last_name DESC;

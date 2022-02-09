# PRACTICO 81

# USA LA FUNCION INSERT INTO Y AGREGA UN REGISTRO A LA TABLA CUSTOMER

select * from sakila.customer;
INSERT INTO sakila.customer(store_id,first_name,last_name,email,address_id,active)
VALUES (2,'Roberto','Gocheneche','robgo@live.com',605,1);
select * from sakila.customer;
# PRACTICO 60

# CONSULTA LA TABLA PAYMENT Y HAS UN GROUP BY POR CUSTOMER_ID PARA EL PROMEDIO DE AMOUNT,
# LUEGO USA LA FUNCION ROUND() PARA REDONDEAR A CERO DECIMALES EL PROMEDIO

select * from sakila.payment;

select
customer_id,
round(avg(amount),0)
from sakila.payment
group by customer_id;
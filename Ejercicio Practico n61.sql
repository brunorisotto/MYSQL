# PRACTICO 61

# USA LA FUNCION UCASE() EN LA TABLA SAKILA.CITY Y CONVIERTE LA COLUMNA CITY EN MAYUSCULAS

select
city,
ucase(city) as 'CITY MAYUSCULAS'
from sakila.city;

# CONSULTA TABLA FILM_TEXT DE LA BASE SAKILA ~#
select * from sakila.film_text

# FILTRA LA INFORMACION DONDE TITE SEA ZORRO ARK, VIRGIN DAISY, UNITED PILOT#
where title in ('ZORRO ARK','VIRGIN DAISY','UNITED PILOT');

#CONSULTA TABLA CITY DE BASE DE DATOS SAKILA#
select * from sakila.city

#FILTRA INFORMACION DONDE CITY SEA CHIAYI, DONGYING, FUKUYAMA Y KILIS#
where city in ('Chiayi','Dongying','Fukuyama','Kilis');

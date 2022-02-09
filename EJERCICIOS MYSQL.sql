use northwind;
# EJERCICIO 1: ESCRIBIR UNA QUERY QUE REGRESE TODAS LAS CATEGORIAS
SELECT * FROM categories;

# EJERCICIO 2: escribir un query que regrese id(productID), NOMBRE(productName) y precio unitario (unitPrice) de cada producto
SELECT
ProductId,
Productname,
UnitPrice
FROM products;

# EJERCICIO 3: ESCRIBIR UN QUERY QUE REGRESE PUESTO (title), NOMBRE(firstName), APELLIDO(lastName), fecha nacimiento (birthdate) de cada empleado
SELECT
Title,
FirstName,
LastName,
Birthdate
FROM employees;

# EJERCICIO 4: OBTENER NOMBRE, APELLIDO, CIUDAD Y PAIS DE LOS EMPLEADOS Y ORDENARLOS POR NOMBRE ASCENDENTE
SELECT
FirstName,
LastName,
City,
Country
FROM employees
ORDER BY 1 ASC;

# EJERCICIO 5: OBTENER NOMBRE COMPLETO, CIUDAD Y PAIS DE LOS EMPLEADOS Y ORDENARLOS POR NOMBRE Y CIUDAD ASCENDENTE
# ASI COMO PONER LOS NOMBRES DE COLUMNAS EN ESPAÑOL
SELECT
CONCAT(FirstName,' ',LastName) as 'Nombre Completo',
City,
Country
FROM employees
ORDER BY 1 ASC, 2 ASC;


# EJERCICIO 6: OBTENER LOS NOMBRES DEL CLIENTE, DIRECCION, CIUDAD, REGION Y PAIS DE LOS CLIENTES
# ORDENAR POR NOMBRE Y CIUDAD DE CLIENTE EN FORMA DESCENDENTE ASI COMO COLOCAR LOS NOMBRES

SELECT * FROM Customers;
SELECT
CompanyName as 'Cliente',
Address as 'Direccion',
City as 'Ciudad',
Region,
Country as 'Pais'
FROM Customers
ORDER BY 1 DESC, 3 DESC;

/* EJERCICIO 7: OBTENER EL NOMBRE DE LOS PRODUCTOS DODNE EL PRECIO UNITARIO SEA MAYOR A 20 DOLARES
 Y ORDERNAS POR PRECIO EN FORMA ASCENDENTE*/
 SELECT * FROM products;
 SELECT
 ProductName,
 UnitPrice
 FROM products
 WHERE UnitPrice > 20
 ORDER BY 2 ASC;
 
 /* EJERCICIO 8: OBTENER EL NOMBRE DE LOS PRODUCTOS DONDE EL PRECIO UNITARIO SE ENCUENTRE ENTRE 20 Y 30 DOLARES
 ORDENAR POR PRECIO DE FORMA DESCENDENTE*/
 
 SELECT
 ProductName,
 UnitPrice
 FROM products
 WHERE UnitPrice BETWEEN 20 AND 30
 ORDER BY 2 DESC;
 
 /*RELACION DE TABLAS CON INNER JOIN*/
 SELECT * FROM products;
 SELECT * FROM categories;
# INNER JOIN
 select
 ProductID,
 ProductName,
 categories.CategoryID,
 CategoryName,
 products.SupplierID
 FROM products
 INNER JOIN categories ON (products.CategoryID = categories.CategoryID)
 INNER JOIN suppliers ON (products.SupplierID = suppliers.SupplierID);

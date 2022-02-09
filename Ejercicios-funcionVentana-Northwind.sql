-- CONSULTAS USANDO FUNCION VENTANA A DB NORTHWIND

USE Northwind;
SHOW TABLES;
SELECT 
    country,
    companyname,
    row_number() over(partition by country order by companyname)
FROM
    customers;


CREATE VIEW view_totalorder AS
select o.CustomerID, o.OrderID, o.Orderdate, SUM(d.Quantity * d.UnitPrice) as Val
FROM orders as o INNER JOIN order_details as d
on o.OrderID=d.OrderID GROUP BY o.CustomerID, o.OrderID, o.Orderdate;

SELECT CustomerId, OrderID, Val,
SUM(Val) OVER(PARTITION BY CustomerID # AGRUPA POR
			  ORDER BY OrderID
              ROWS BETWEEN UNBOUNDED PRECEDING
              AND CURRENT ROW) as TotalCustomers
from view_totalorder;


# OTRA CONSULTA

SELECT c.categoryname,
p.productname,
p.UnitPrice
FROM categories as c INNER JOIN products as p
on c.CategoryID = p.CategoryID;

# RANKEAMOS LOS PRODUCTOS MAS CAROS CON FUNCION VENTANA

SELECT k.* FROM (SELECT c.categoryname,
p.productname,
p.UnitPrice,
rank() OVER (PARTITION BY c.categoryname ORDER BY p.UnitPrice DESC) AS Ranking
FROM categories as c INNER JOIN products as p
on c.CategoryID = p.CategoryID) AS k WHERE Ranking = 2;
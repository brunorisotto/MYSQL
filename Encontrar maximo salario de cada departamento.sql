

/*
Employee table:
+----+-------+--------+--------------+
| Id | Name  | Salary | DepartmentId |
+----+-------+--------+--------------+
| 1  | Joe   | 70000  | 1            |
| 2  | Jim   | 90000  | 1            |
| 3  | Henry | 80000  | 2            |
| 4  | Sam   | 60000  | 2            |
| 5  | Max   | 90000  | 1            |
+----+-------+--------+--------------+
///////////////////////////////
Department table:
+----+----------+
| Id | Name     |
+----+----------+
| 1  | IT       |
| 2  | Sales    |
+----+----------+
//////////////////////////////
Escriba una consulta SQL para encontrar empleados que tengan
 el salario más alto en cada uno de los departamentos. Para las tablas anteriores,
 su consulta SQL debe devolver las siguientes filas (el orden de las filas no importa).
 +------------+----------+--------+
| Department | Employee | Salary |
+------------+----------+--------+
| IT         | Max      | 90000  |
| IT         | Jim      | 90000  |
| Sales      | Henry    | 80000  |
+------------+----------+--------+
 */

# Write your MySQL query statement below
select
Department.Name as 'Department',
Employee.Name as 'Employee',
Employee.Salary
from Employee
inner join Department  on (Employee.DepartmentId = Department.Id)
where
    (Employee.Departmentid, employee.Salary) in(
        select
            DepartmentId, max(Salary)
        from
            Employee
        group by DepartmentId
    );
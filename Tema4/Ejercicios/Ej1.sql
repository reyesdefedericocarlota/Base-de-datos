-- elimina la base de datos si ya existe
drop database if exists techcorp_db;

-- crea la base de datos
create database techcorp_db;
use techcorp_db;

-- tabla empleados
-- crea la tabla empleados con las columnas:
-- id (entero, clave primaria)
-- nombre (nombre del empleado)
-- edad (edad del empleado)
-- salario (salario mensual del empleado)
-- departamento (departamento donde trabaja)
-- ciudad (ciudad donde trabaja)
create table empleados (
    id int primary key,
    nombre varchar(50),
    edad int,
    salario decimal(10, 2),
    departamento varchar(50),
    ciudad varchar(50)
);

-- inserta registros de ejemplo en la tabla empleados
-- datos de empleados con diferentes departamentos, ciudades y salarios
insert into empleados values
(1, 'laura', 35, 4500, 'it', 'madrid'),
(2, 'carlos', 28, 3200, 'ventas', 'barcelona'),
(3, 'ana', 45, 6000, 'marketing', 'madrid'),
(4, 'juan', 50, 5200, 'recursos humanos', 'sevilla'),
(5, 'luis', 29, 3400, 'it', 'madrid'),
(6, 'marta', 33, 5800, 'desarrollo', 'valencia');

-- tabla clientes
-- crea la tabla clientes con las columnas:
-- id (entero, clave primaria)
-- nombre (nombre del cliente)
-- ciudad (ciudad donde reside el cliente)
create table clientes (
    id int primary key,
    nombre varchar(50),
    ciudad varchar(50)
);

-- inserta registros de ejemplo en la tabla clientes
-- datos de clientes con diferentes ciudades
insert into clientes values
(1, 'tech solutions', 'madrid'),
(2, 'innovate inc', 'barcelona'),
(3, 'nextgen ltd', 'valencia'),
(4, 'futureworks', 'madrid'),
(5, 'digitalsoft', 'sevilla');

use techcorp_db;

-- ejercicios para realizar consultas sql
-- 1. recupera los nombres y salarios de todos los empleados.
select nombre, salario from empleados;

-- 2. selecciona todos los datos de la tabla empleados.
select * from empleados;

-- 3. recupera los datos de los empleados que trabajan en el departamento de it y cuya ciudad sea madrid.
select * from empleados where departamento = "it" and ciudad = "madrid";

-- 4. selecciona todos los empleados con un salario mayor a 3000 pero menor o igual a 6000.
select nombre, salario from empleados where salario > 3000 and salario <= 6000;

-- 5. muestra una lista única de todas las ciudades en las que trabajan los empleados.
select distinct ciudad from empleados;

-- 6. encuentra todos los empleados que trabajan en ventas o marketing y tienen un salario mayor a 5000.
select nombre, salario, departamento from empleados where departamento in ("ventas", "marketing") and salario > 5000;

-- 7. recupera todos los empleados que no trabajan en el departamento de recursos humanos.
select * from empleados where not departamento = "Recursos Humanos";

-- 8. encuentra todos los clientes que residen en barcelona.
select * from clientes where ciudad = "barcelona";

-- 9. muestra una lista única de nombres de departamentos donde hay empleados menores de 30 años que ganan más de 4000.
select distinct departamento from empleados where edad < 30 and salario > 4000;

-- 10. recupera los empleados que tienen un salario mayor o igual a 3500 y están en el departamento desarrollo.
select * from empleados where salario >= 3500 and departamento = "desarrollo";
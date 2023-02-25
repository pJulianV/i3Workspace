--select * from role_edges;
show tables;
--select * from role_edges;

CREATE USER 'julian'@'localhost' IDENTIFIED BY 'Julian1234';

CREATE DATABASE biblioteca;

GRANT ALL PRIVILEGES ON biblioteca . *  TO 'julian'@'localhost';

FLUSH PRIVILEGES;

-- julian'@'localhost
-- Julian1234
-- https://www.w3schools.com/mySQl/mysql_create_db.asp

use biblioteca;

CREATE TABLE libros( 
    id int(10) AUTO_INCREMENT PRIMARY KEY, 
    titulo char(200), 
    autor char(200), 
    fecha char(50), 
    prestamo char(2), 
    precio int(10));


insert into libros(titulo, autor, fecha, prestamo, precio) values ("Atomic Habits", "James Clear, ", "15/Enero/2015","SI","200000");

+----+-------------------------------------+------------------+---------------+----------+--------+
| id | titulo                              | autor            | fecha         | prestamo | precio |
+----+-------------------------------------+------------------+---------------+----------+--------+
|  1 | El amor en los tiempos de Covid     | Mauricio Vanegas | 20/Abril/2020 | NO       | 300000 |
|  2 | The Subtle Art of Not Giving a F*ck | Mark Manson      | 10/Mayo/2010  | SI       | 100000 |
|  3 | Atomic Habits                       | James Clear,     | 15/Enero/2015 | SI       | 200000 |
+----+-------------------------------------+------------------+---------------+----------+--------+
create user "estudiante1"@"localhost" identified by "estudiante";

grant all privileges on biblioteca2 . * to "estudiante1"@"localhost";

CREATE TABLE libros2(
    id int(10) AUTO_INCREMENT PRIMARY KEY,
    titulo char(200),
    autor char(200), 
    fecha char(50), 
    prestamo char(2), 
    precio int(10));

insert into libros2(titulo, autor, fecha, prestamo, precio) values ("Se que me mas aun", "Pablo Trujillo", "25/Marzo/2000","SI","600000");

insert into libros2(titulo, autor, fecha, prestamo, precio) values ("AaA", "Pablo Trujillo", "5/Marzo/1940","NO","600000");

insert into libros2(titulo, autor, fecha, prestamo, precio) values ("AaA", "Idk Philosophy", "5/Marzo/1940","NO","40000");


select titulo, autor from libros2 order by titulo asc;

select titulo, precio from libros2 order by titulo desc;

select autor from libros2

select * from libros2 where precio<100000;

select * from libros2 where precio>300000;

select * from libros2 where prestamo="SI";

select titulo, precio from libros2 order by precio desc;


update libros2, 
set titulo="Se que me amas aun",
where fecha = "25/Marzo/2000";

delete from libros2  where id=3;

-- W3School

DELETE FROM table_name WHERE condition;

UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;
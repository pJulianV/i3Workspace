create user "Software2"@"localhost" identified by "Software2."

-- mysql -u Software2 -p




create table biblioteca3(
    idbiblioteca int(10) primary key auto_increment,
    nombre varchar(50),
    direccion varchar(50),
    telefono varchar(50)
);

insert into biblioteca3(nombre, direccion, telefono) values 
("Biblioteca Francisco Jose de Caldas", "Cra. 92, Suba, Bogotá", "15803050"),("Biblioteca Pública Virgilio Barco
", "Av. Cra. 60 No. 57 - 60, Teusaquillo, Bogotá", "6015803010");
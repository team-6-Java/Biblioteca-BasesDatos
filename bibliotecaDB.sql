drop database if exists bibliotecaDB;
create database bibliotecaDB;
use bibliotecaDB;

drop table if exists Mensajes;
drop table if exists Prestamo;
drop table if exists Autor;
drop table if exists Libro;
drop table if exists Editorial;
drop table if exists Usuario;

create table Usuario (
username varchar(255) not null,
nombre varchar(255) not null,
apellido varchar(255),
email varchar(255) not null,
contraseña varchar(255) not null,
descripcion varchar(255),
imagen blob,
primary key (username)
);

create table Editorial(
id int auto_increment,
nombre varchar(255) not null,
primary key (id)
);

create table Autor(
id int auto_increment,
nombre varchar(255) not null,
apellido varchar(255),
primary key (id)
);

create table Libro(
id int auto_increment,
titulo varchar(255) not null,
isbn varchar(255) not null,
tematica varchar(255),
estado varchar(255)not null,
imagen blob,
paginas int not null,
descripcion varchar(255),
usuario varchar(255),
editorial int,
autor int not null,
primary key(id),
foreign key (usuario) references Usuario(username) on delete cascade on update cascade,
foreign key (editorial) references Editorial(id) on update cascade,
foreign key (autor) references Autor(id) on update cascade
);

create table Prestamo(
id int auto_increment,
valoracion_libro varchar(255),
fecha_prestamo date not null,
fecha_devolucion date,
usuario varchar(255),
primary key (id),
foreign key (usuario) references Usuario(username) on delete cascade on update cascade
);

create table Mensajes(
id int auto_increment,
usuario1 varchar(255),
usuario2 varchar(255),
primary key (id),
foreign key (usuario1) references Usuario(username) on update cascade,
foreign key (usuario2) references Usuario(username) on update cascade
);
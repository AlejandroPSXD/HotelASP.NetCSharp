create database hoteles;
go

use hoteles;
go

create table habitaciones(
habitacion INT identity(1,1) primary key,
descripcion varchar(50) NOT NULL,
precio numeric(10,2) NOT NULL
);

insert into habitaciones values ('Habitación Simple', 100)
insert into habitaciones values ('Habitación Doble', 200)
select * from habitaciones

create table reservas(
reserva INT identity(1,1) primary key,
habitacion int NOT NULL,
nombre varchar(50) NOT NULL,
cedula varchar(11) NOT NULL,
correo varchar(50) NOT NULL,
telefono varchar(10) NOT NULL,
adultos int NOT NULL,
ninos int,
fechai date NOT NULL,
fechas date NOT NULL,
dias int NOT NULL,
hospedaje numeric(10,2) NOT NULL,
alimentacion numeric(10,2) NOT NULL,
impuestos numeric(10,2) NOT NULL,
total numeric(10,2) NOT NULL
FOREIGN KEY (habitacion) REFERENCES habitaciones(habitacion)

);

select * from reservas

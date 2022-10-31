-- FUNCIONES
--SELECT ES UNA FUNCION DE APLICACION DE LAS TABLAS 
create database HITO_4_FUNCIONES;
use HITO_4_FUNCIONES;

--manejo de funciones
--una funcion de agregacion siempre se ejecuta en la clausula select
--ademas siempre retoma el unico valor ( una fila )
--es una aplicada a un grupo de registro ( a una columna de la tabla)

create table estudiantes (
id_estudiante int identity primary key not null,
nombre  varchar (25)not null,
apellidos varchar (25) not null,
edad int not null,
fono int not null,
email varchar (25) not null,
direccion varchar (25) not null,
genero varchar (25) not null,
id_escuela varchar (25) not null,
 foreign key (id_escuela) references escuela (id_escuela),
);


drop table estudiantes;

INSERT INTO estudiantes (nombre, apellidos, edad, fono, email, direccion, genero,id_escuela)
  VALUES ('Miguel' ,'Gonzales Veliz', 20, 2832115, 'miguel@gmail.com', 'Av. 6 de Agosto', 'masculino','scl813518');
INSERT INTO estudiantes (nombre, apellidos, edad, fono, email, direccion, genero,id_escuela)
  VALUES ('Sandra' ,'Mavir Uria', 25, 2832116, 'sandra@gmail.com', 'Av. 6 de Agosto', 'femenino','scl81234');
INSERT INTO estudiantes (nombre, apellidos, edad, fono, email, direccion, genero,id_escuela)
  VALUES ('Joel' ,'Adubiri Mondar', 30, 2832117, 'joel@gmail.com', 'Av. 6 de Agosto', 'masculino','scl845612');
INSERT INTO estudiantes (nombre, apellidos, edad, fono, email, direccion, genero,id_escuela)
  VALUES ('Andrea' ,'Arias Ballesteros', 21, 2832118, 'andrea@gmail.com', 'Av. 6 de Agosto', 'femenino','scl198418');
INSERT INTO estudiantes (nombre, apellidos, edad, fono, email, direccion, genero,id_escuela)
  VALUES ('Santos' ,'Montes Valenzuela', 24, 2832119, 'santos@gmail.com', 'Av. 6 de Agosto', 'masculino','scl813518');

  select * from estudiantes;

  select *
  from estudiantes as est ;

  select count (est.id_estudiante) as numero_de_estudiantes
  from estudiantes as est;

  select min (est.edad) as edad_minima
  from estudiantes as est;

  select count(est.id_estudiante) as genero_femenino
  from estudiantes as est
  WHERE est.genero = 'femenino';

  alter table estudiantes add licencia_de_conducir bit;

  INSERT INTO estudiantes (nombre, apellidos, edad, fono, email, direccion, genero,licencia_de_conducir)
  VALUES ('miguel' ,'Montes Valenzuela', 24, 2832119, 'miguel@gmail.com', 'Av. 6 de Agosto', 'masculino',1);
  INSERT INTO estudiantes (nombre, apellidos, edad, fono, email, direccion, genero,licencia_de_conducir)
  VALUES ('Ana' ,'Arias Ballesteros', 21, 2832118, 'ana@gmail.com', 'Av. 6 de Agosto', 'femenino',0);

  select count (est.licencia_de_conducir) as licecia_de_conducir
  from estudiantes as est;
  
  select count (est.id_estudiante) as licecia_de_conducir
  from estudiantes as est;


  select count  (est.id_estudiante) as 
  from estudiantes as est

 
  select max (est.edad)
  from estudiantes as est
  where est.genero = 'masculino' or est.genero = 'femenino';

  select count (est.id_estudiante)
  from estudiantes as est
  where est.apellidos like '%el%' and est.genero = 'masculino';

  select count (est.id_estudiante)
  from estudiantes as est
  where est.edad <30 and est.edad >20 and est.licencia_de_conducir = 1;

 SELECT count(est.id_estudiante)
FROM estudiantes as est
WHERE est.edad BETWEEN 21 and 29 and est.licencia_de_conducir = 1;

  select *
  from estudiantes as est;

  create table escuela(
  id_escuela varchar (25) primary key not null,
  nombre_de_escuela varchar (25) not null,
  direccion varchar (25) not null,
  turno varchar (25) not null
  );

  insert into escuela (id_escuela,nombre_de_escuela,direccion,turno)
  values('scl813518','Sam Pedro','Villa Tunari','mañana');
    insert into escuela (id_escuela,nombre_de_escuela,direccion,turno)
  values('scl81234','Don Bosco','Senkata','tarde');
    insert into escuela (id_escuela,nombre_de_escuela,direccion,turno)
  values('scl845612','Villa Libertad','Rio Seco','noche');
    insert into escuela (id_escuela,nombre_de_escuela,direccion,turno)
  values('scl198418','Cajuata','Avenida Union','mañana');

  select * from escuela;

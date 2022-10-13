create database numeros1;
use numeros1
create table numeros_A(
num_a varchar (25) primary key
);
insert into numeros_A(num_a)
values(2),
(5),
(8),
(7),
(11),
(10);

create table numeros_B(
num_b varchar (25)
);

insert into numeros_B(num_b)
values (5),
(12),
(10),
(7),
(20),
(100);

select*from numeros_A;
select*from numeros_B;

select ta.num_a,tb.num_b
from numeros_A AS ta
inner join numeros_B AS tb ON ta.num_a = tb.num_b;

select ta.num_a,tb.num_b
from numeros_A AS ta
inner join numeros_B AS tb ON ta.num_a = tb.num_b
where ta.num_a > 6 and tb.num_b > 6;
-- where = donde

create table notas_1(
notas_a int
);

insert into notas_1(notas_a)
values(51),
(40),
(25),
(30),
(45),
(80);

create table notas_2(
notas_b int
);

insert into notas_2(notas_b)
values(51),
(40),
(75),
(20),
(45),
(80);
create table notas_3(
notas_c int
);

insert into notas_3(notas_c)
values(51),
(40),
(100),
(10),
(45),
(80);

select*from notas_1;
select*from notas_2;
select*from notas_3;

select nta.notas_a,ntb.notas_b,ntc.notas_c
from notas_1 AS nta
inner join notas_2 AS ntb ON nta.notas_a=ntb.notas_b
inner join notas_3 AS ntc ON ntb.notas_b=ntc.notas_c;

select nta.notas_a,ntb.notas_b,ntc.notas_c
from notas_1 AS nta
inner join notas_2 AS ntb ON nta.notas_a=ntb.notas_b
inner join notas_3 AS ntc ON ntb.notas_b=ntc.notas_c
where nta.notas_a >50 and nta.notas_a <100;

use UNIVERSIDAD1

insert into escuela(nombre,direccion)
values ('san felipe asturias ll','el alto');

select est.direccion,est.nombre,est.apellido
from estudiantes AS est
inner join escuela AS esc ON esc.id_esc = est.id_esc
where esc.nombre = 'san felipe asturias ll';

select * from escuela

use UNIVERSIDAD1

create table nombres_dbi(
nombres1 varchar (100),
id_uv varchar (50) primary key 
);
drop table nombres_dbi;

create table nombres_dbm(
nombres2 varchar (100),
id_uv1 varchar (50) primary key 
);
drop table nombres_dbm;

insert into nombres_dbi(nombres1,id_uv)
values('william','sis_78515252'),
('victor','sis_3154525'),
('mijail','sis_59874654'),
('karen','sis_265212213'),
('brayan','sis_31545323545'),
('ariel','sis_34346463');

insert into nombres_dbm(nombres2,id_uv1)
values ('victor','sis_3154525'),
('samuel','sis_7851522'),
('ana','sis_7851522543'),
('brayan','sis_31545323545');
truncate table nombres_dbm;
select * from nombres_dbi;
select * from nombres_dbm;

select nom.nombres1,nom1.nombres2
from nombres_dbi as nom
inner join nombres_dbm as nom1 on nom.id_uv = nom1.id_uv1;

insert into escuela(nombre,direccion)
values ('san felipe asturias ll','el alto');
select * from escuela;

insert into estudiantes(nombres,apellidos,direccion,edad,sexo)
values ('saul','escobar','villa tunari',22,'masculino');
select* from estudiantes;


select est.direccion,est.nombres,est.apellidos
from estudiantes AS est
inner join escuela AS esc ON esc.id_esc = est.id_esc
where esc.nombre = 'san felipe asturias ll';

select est.direccion,est.nombres,est.apellidos,est.edad,est.sexo
from estudiantes AS est
inner join escuela AS esc ON esc.id_esc = est.id_esc
where esc.nombre = 'san felipe asturias ll'and est.edad > 22 and est.sexo = 'masculino';

select est.nombres,est.apellidos,kr.nota_num,kr.id_est_cedula
from estudiantes as est
inner join kardex as kr on est.id_est_cedula = kr.id_est_cedula
inner join materias as mat on mat.id_mat = kr.id_mat
where kr.nota_num > 51 and mat.nombre_mat = 'fisica basica';

select est.nombres,est.apellidos
from kardex as kr
inner join estudiantes as est on kr.id_est_cedula = est.id_est_cedula
where kr.nota_num >= 51 and est.edad > 25;

select per.semestre,per.año_gestion
from periodo as per
inner join kardex as kr on kr.id_per = per.id_per
where kr.id_est_cedula = 1;

select est.nombres,est.apellidos,per.año_gestion
from periodo as per
inner join estudiantes as est on est.id_esc = per.id_per
inner join kardex as kr on kr.id_est_cedula = est.id_est_cedula
where per.año_gestion = 2016 and kr.estado = 'aprobado';
create database numeros;
use numeros
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

select est.direccion,est.nombres,est.apellidos
from estudiantes AS est
inner join escuela AS esc ON esc.id_esc = est.id_esc
where esc.nombre = 'san felipe asturias ll';

select * from escuela

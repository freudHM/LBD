use Schule

select * from Alumno where idalumno = '2'
select * from Materia where nombre = 'Artes'
select * from Maestro where iniciocontrato = '2012'
select * from Salon where numero = '104'
select * from Carrera where nombre = 'LSTI'

select nombre, sum(idalumno)
from Alumno
group by nombre 
having sum(idalumno) > 2

select nombre, sum(idmateria)
from Materia
group by nombre
having sum(idmateria) > 5

select idmaestro, sum(idmateria)
from Maestro
group by idmaestro
having sum(idmateria) < 100

select nombre, sum(idcarrera)
from Carrera
group by nombre 
having sum(idcarrera) < 60

select numero, sum(idsalon)
from Salon
group by numero
having sum(idsalon) > 7

select avg(idalumno) from Alumno
select sum(idmateria) from Materia
select min(anocurso) from Alumno
select max(numero) from Salon

select top 3 * from Alumno
select top 5 * from Materia
select top 2 * from Maestro
select top 7 * from Salon
select top 4 * from Carrera


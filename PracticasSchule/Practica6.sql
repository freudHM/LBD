use Schule

--Select avanzado

select Maestro.nombre, Materia.nombre
from Maestro 
inner join Materia on Maestro.idmaestro = Materia.idmateria

select Alumno.nombre, Carrera.nombre
from Alumno
left join Carrera on Alumno.idalumno = Carrera.idcarrera
order by Alumno.nombre

select Alumno.nombre, Carrera.nombre
from Alumno
right join Carrera on Alumno.idalumno = Carrera.idcarrera
order by Carrera.nombre

select Alumno.idalumno, Alumno.nombre, Alumno.anocurso
from Alumno
cross join Carrera

select Carrera.nombre, Materia.nombre 
from Carrera 
inner join Materia on Carrera.idcarrera = Materia.idmateria

select Salon.numero, Materia.nombre
from Salon
left join Materia on Salon.idsalon = Materia.idmateria
order by Salon.numero

select Salon.numero, Maestro.nombre
from Salon
right join Maestro on Salon.idsalon = Maestro.idmaestro
order by Salon.numero

select Alumno.anocurso, Carrera.duracion
from Alumno
right join Carrera on Alumno.idalumno = Carrera.idcarrera
order by Carrera.duracion

select Maestro.iniciocontrato, Materia.nombre
from Maestro 
left join Materia on Maestro.idmaestro = Materia.idmateria
order by Materia.nombre 

select Alumno.nombre, Carrera.duracion
from  Alumno
inner join Carrera on Alumno.idalumno = Carrera.idcarrera

--Subconsulta 
select nombre from Alumno where idalumno > 5

--Select with 
with Ingreso as (select nombre, fechaingreso from Alumno where idcarrera > 1) select nombre from Carrera

--Select into 
select * into nombre from Materia;
select * from nombre;
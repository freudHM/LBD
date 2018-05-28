use Schule

create view vw_Ma as
select Maestro.nombre, Materia.nombre
from Maestro 
inner join Materia on Maestro.idmaestro = Materia.idmateria

create view vw_Al as
select Alumno.nombre, Carrera.nombre
from Alumno
left join Carrera on Alumno.idalumno = Carrera.idcarrera
order by Alumno.nombre

create view vw_Ca as
select Alumno.nombre, Carrera.nombre
from Alumno
right join Carrera on Alumno.idalumno = Carrera.idcarrera
order by Carrera.nombre

create view vw_Sa as
select Salon.numero, Materia.nombre
from Salon
left join Materia on Salon.idsalon = Materia.idmateria
order by Salon.numero

create view vw_SaMa as
select Salon.numero, Maestro.nombre
from Salon
right join Maestro on Salon.idsalon = Maestro.idmaestro
order by Salon.numero
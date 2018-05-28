use Schule

insert into Alumno
(idalumno, nombre, fechaingreso, idcarrera, anocurso)
values ('1', 'Juan Perez', '2012', '1', '1');

insert into Alumno
(idalumno, nombre, fechaingreso, idcarrera, anocurso)
values ('2', 'Fernando Hijer', '2012', '4', '3');

insert into Alumno
(idalumno, nombre, fechaingreso, idcarrera, anocurso)
values ('3', 'Alfredo Holguin', '2012', '7', '2');

insert into Alumno
(idalumno, nombre, fechaingreso, idcarrera, anocurso)
values ('4', 'Pedro Robles', '2012', '6', '1');

insert into Alumno
(idalumno, nombre, fechaingreso, idcarrera, anocurso)
values ('5', 'Mario Reyes', '2012', '5', '1');

insert into Alumno
(idalumno, nombre, fechaingreso, idcarrera, anocurso)
values ('6', 'Gloria Martinez', '2012', '2', '2');

insert into Alumno
(idalumno, nombre, fechaingreso, idcarrera, anocurso)
values ('7', 'Luisa Alvarez', '2012', '3', '4');

insert into Alumno
(idalumno, nombre, fechaingreso, idcarrera, anocurso)
values ('8', 'Arturo Hernandez', '2012', '8', '4');

insert into Alumno
(idalumno, nombre, fechaingreso, idcarrera, anocurso)
values ('9', 'Bernardo Gonzalez', '2012', '9', '4');

insert into Alumno
(idalumno, nombre, fechaingreso, idcarrera, anocurso)
values ('10', 'Ivan Gamez', '2012', '10', '1');

insert into Carrera 
(idcarrera, nombre, duracion)
values ('1', 'LSTI', '4')

insert into Carrera 
(idcarrera, nombre, duracion)
values ('2', 'LCC', '4')

insert into Carrera 
(idcarrera, nombre, duracion)
values ('3', 'LMAD', '4')

insert into Carrera 
(idcarrera, nombre, duracion)
values ('4', 'LF', '4')

insert into Carrera 
(idcarrera, nombre, duracion)
values ('5', 'LM', '4')

insert into Carrera 
(idcarrera, nombre, duracion)
values ('6', 'LA', '4')

insert into Carrera 
(idcarrera, nombre, duracion)
values ('7', 'LHSF', '4')

insert into Carrera 
(idcarrera, nombre, duracion)
values ('8', 'LQI', '4')

insert into Carrera 
(idcarrera, nombre, duracion)
values ('9', 'LPO', '4')

insert into Carrera 
(idcarrera, nombre, duracion)
values ('10', 'LTY', '4')

insert into Salon
(idsalon, cantidad, numero)
values ('1', '15', '101');

insert into Salon
(idsalon, cantidad, numero)
values ('2', '15', '102');

insert into Salon
(idsalon, cantidad, numero)
values ('3', '15', '103');

insert into Salon
(idsalon, cantidad, numero)
values ('4', '15', '104');

insert into Salon
(idsalon, cantidad, numero)
values ('5', '15', '105');

insert into Salon
(idsalon, cantidad, numero)
values ('6', '10', '201');

insert into Salon
(idsalon, cantidad, numero)
values ('7', '10', '202');

insert into Salon
(idsalon, cantidad, numero)
values ('8', '10', '203');

insert into Salon
(idsalon, cantidad, numero)
values ('9', '10', '204');

insert into Salon
(idsalon, cantidad, numero)
values ('10', '10', '205');

insert into Materia
(idmateria, nombre, idcarrera, idsalon)
values ('1', 'Quimica', '10', '1');

insert into Materia
(idmateria, nombre, idcarrera, idsalon)
values ('2', 'Frances', '5', '2');

insert into Materia
(idmateria, nombre, idcarrera, idsalon)
values ('3', 'Criptografia', '1', '3');

insert into Materia
(idmateria, nombre, idcarrera, idsalon)
values ('4', 'Artes', '9', '4');

insert into Materia
(idmateria, nombre, idcarrera, idsalon)
values ('5', 'Ingenieria Social', '8', '5');

insert into Materia
(idmateria, nombre, idcarrera, idsalon)
values ('6', 'Historia', '3', '6');

insert into Materia
(idmateria, nombre, idcarrera, idsalon)
values ('7', 'Algebra', '2', '7');

insert into Materia
(idmateria, nombre, idcarrera, idsalon)
values ('8', 'Seguridad Fisica', '4', '8');

insert into Materia
(idmateria, nombre, idcarrera, idsalon)
values ('9', 'Programacion', '6', '9');

insert into Materia
(idmateria, nombre, idcarrera, idsalon)
values ('10', 'Calculo', '7', '10');

insert into Maestro
(idmaestro, nombre, idmateria, iniciocontrato)
values ('1', 'Pablo Rodriguez', '1', '2012');

insert into Maestro
(idmaestro, nombre, idmateria, iniciocontrato)
values ('2', 'Fernando Gonzalez', '2', '2012');

insert into Maestro
(idmaestro, nombre, idmateria, iniciocontrato)
values ('3', 'Maria Guajardo', '3', '2012');

insert into Maestro
(idmaestro, nombre, idmateria, iniciocontrato)
values ('4', 'Heriberto Martinez', '4', '2012');

insert into Maestro
(idmaestro, nombre, idmateria, iniciocontrato)
values ('5', 'Maria del Refugio', '5', '2012');

insert into Maestro
(idmaestro, nombre, idmateria, iniciocontrato)
values ('6', 'Beto Cardenas', '6', '2012');

insert into Maestro
(idmaestro, nombre, idmateria, iniciocontrato)
values ('7', 'Yenny Guzman', '7', '2012');

insert into Maestro
(idmaestro, nombre, idmateria, iniciocontrato)
values ('8', 'Adriana Nunez', '8', '2012');

insert into Maestro
(idmaestro, nombre, idmateria, iniciocontrato)
values ('9', 'Omar Castillo', '9', '2012');

insert into Maestro
(idmaestro, nombre, idmateria, iniciocontrato)
values ('10', 'Eleazar Oaxaca', '10', '2012');

insert into Horario
(idhorario, dia, horainicio, horafin, turno)
values ('1', '1', '10:00', '15:00', 'Matutino');

insert into Horario
(idhorario, dia, horainicio, horafin, turno)
values ('2', '2', '10:00', '15:00', 'Matutino');

insert into Horario
(idhorario, dia, horainicio, horafin, turno)
values ('3', '3', '10:00', '15:00', 'Matutino');

insert into Horario
(idhorario, dia, horainicio, horafin, turno)
values ('4', '1', '15:00', '22:00', 'Vespertino');

insert into Horario
(idhorario, dia, horainicio, horafin, turno)
values ('5', '2', '15:00', '22:00', 'Vespertino');

insert into Horario
(idhorario, dia, horainicio, horafin, turno)
values ('6', '3', '15:00', '22:00', 'Vespertino');

update Carrera
set nombre = 'LTM'
where idcarrera = '5'

update Alumno
set idcarrera = '7'
where idalumno = '8'

update Maestro
set nombre = 'Juan Bieber' 
where idmaestro = '5'

update Materia 
set nombre = 'Topicos de Algebra'
where idmateria = '7'

update Salon
set cantidad = '20'
where idsalon = '10'

delete from Alumno 
where nombre = 'Juan Perez'

delete from Maestro
where idmaestro = '5'

delete from Maestro
where idmaestro = '7'

delete from Maestro
where idmaestro = '1'

delete from Alumno 
where nombre = 'Arturo Hernandez'

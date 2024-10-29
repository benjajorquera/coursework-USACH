-- Listado de tareas por emergencia
SELECT tarea.id_emergencia, emergencia.nombre, tarea.*
FROM tarea, emergencia WHERE tarea.id_emergencia = emergencia.id 
ORDER BY tarea.id_emergencia, tarea.id

-- Institución que ha participado en menos emergencias
SELECT institucion.nombre, COUNT(emergencia.nombre) as instCount FROM emergencia
FULL JOIN institucion ON emergencia.id_institucion = institucion.id
GROUP BY institucion.nombre
ORDER BY instCount, institucion.nombre LIMIT 1

--Mínima cantidad de voluntarios por emergencia
SELECT emergencia.id, emergencia.nombre, SUM(tarea.cant_vol_requeridos) as emeVoluntarios
FROM tarea, emergencia
WHERE tarea.id_emergencia = emergencia.id
GROUP BY emergencia.id, emergencia.nombre
ORDER BY emergencia.id

--Máxima cantidad de voluntarios por tarea
SELECT tarea.id, tarea.nombre, SUM(tarea.cant_vol_inscritos) as tareaVoluntarios
FROM tarea
GROUP BY tarea.id, tarea.nombre
ORDER BY tarea.id

--Listar tareas iniciadas entre 2020 y 2021
SELECT *
FROM tarea
WHERE tarea.finicio BETWEEN to_date('01/01/2020', 'DD/MM/YYYY')
AND to_date('31/12/2021', 'DD/MM/YYYY')
ORDER BY tarea.id

--Listar tareas que no lograron la cantidad de participantes requeridos
SELECT *
FROM tarea
WHERE tarea.cant_vol_inscritos < tarea.cant_vol_requeridos
ORDER BY tarea.id

--Listar las 2 habilidades más comunes dentro de los voluntarios
SELECT habilidad.id, habilidad.descrip, COUNT(habilidad.id) as habilidadCount
FROM vol_habilidad, habilidad
WHERE vol_habilidad.id_habilidad = habilidad.id
GROUP BY habilidad.id, habilidad.descrip
ORDER BY habilidadCount DESC LIMIT 2

--Listar las 2 habilidades más solicitadas por emergencia
SELECT eme_habilidad.id_emergencia, eme_habilidad.id_habilidad, COUNT(eme_habilidad.id_habilidad) as emehabilidadCount
FROM eme_habilidad
GROUP BY eme_habilidad.id_emergencia, eme_habilidad.id_habilidad
ORDER BY eme_habilidad.id_emergencia, emehabilidadCount DESC

--Detectar al voluntario que ha participado en más emergencias
SELECT ranking.id_voluntario, COUNT(ranking.flg_participa) as participaCount
FROM ranking
WHERE ranking.flg_participa = 1
GROUP BY ranking.id_voluntario
ORDER BY participaCount DESC LIMIT 1

--Voluntario con mínimo puntaje para participar por emergencia
SELECT DISTINCT ON(tarea.id_emergencia) tarea.id_emergencia, ranking.id_voluntario, ranking.puntaje
FROM ranking, tarea
WHERE ranking.id_tarea = tarea.id AND ranking.flg_participa = 1
GROUP BY tarea.id_emergencia, ranking.id_voluntario, ranking.puntaje
ORDER BY tarea.id_emergencia, ranking.puntaje









--vamos a mostrar datos de las tablas
INSERT INTO futbol.fichas(id_fichas, codigo, programa, jornada)
VALUES (1,'15','20','mañana'),
       (2,'15','20','tarde'),
	   (3,'15','20','diurna');
	   
--vamos a mostar datos de la tabla canchas
	   INSERT INTO futbol.canchas(id_canchas, nombre, ubicacion, capacidad)
	   VALUES(1,'sofia','cali',300),
	         (2,'david','medellin',200),
			 (3,'julian','bogota',100);

--vamos a mostra datos de la tabla arbitros
INSERT INTO futbol.arbitros(id_arbitros, documento, nombre, celular)
VALUES (1,'3','sara','3216957077'),
       (2,'4','sebastian','3216957045'),
	   (3,'5','matias','3217857912');

--vamos a mostrar datos de la tabla equipos
INSERT INTO futbol.equipos(id_equipos,nombre, color_camisa, id_fichas )
VALUES (1,'santiago','negro',1),
       (2,'kevin','rojo',2),
	   (3,'stiven','blanco',3);

--vamos a mostrar datos de la tabla jugadores
INSERT INTO futbol.jugadores(id_jugadores, documento, nombre, fecha_nacimiento, numero_camisa, id_equipos )
VALUES (1,'1061732355','juan','10/10/2008','3',1),
       (2,'106173233','marlen','20/10/2009','11',2),
	   (3,'1061743455','danna','11/11/2010','15',3);

--vamos a mostrar datos de la tabla partidos
INSERT INTO futbol.partidos(id_partidos, fecha, hora, fase, id_canchas)
VALUES (1,'20/10/2025','2:00','primer tiempo',1),
       (2,'11/11/2026','3:00','segundo tiempo',2),
	   (3,'12/12/2027','4:00','tiempo extra',3);

--vamos a mostrar datos  de la tabla asistencias
INSERT INTO futbol.asistencias(id_asistencias, fecha, hora, id_partido, id_arbitros)

VALUES (1,'10/10/2005','4:00',1,1),
       (2,'20/10/2026','4:30',2,2),
	   (3,'11/12/2026','5:00',3,3);

--vamos a mostrar los datos de la tabla participaciones
INSERT INTO futbol.participaciones(id_participaciones, tarjeta, tiempo, id_jugadores, id_partidos)
VALUES (1,'amarrilla','00:10:00',1,1),
       (2,'roja','00:20:00',2,2),
       (3,'azul','00:30:00',3,3);
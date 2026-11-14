--ingresamos datos a la tabla de plan
INSERT INTO gimnasio.plan (ID_plan, Nombre_plan, Duracion_meses, Precio_)
VALUES (1,'Mensual','1',50000),
       (2, 'Trimestral','3',15000),
       (3,'Anual', '12',700000);

--ingreasamos datos de la tabla entrenador
INSERT INTO gimnasio.entrenador (ID_entrenador, Documento_, Nombre_entrenador, Especialidad_entrenaador)
VALUES (4,'20','Danna', 'espallo'),
       (5,'80','sebastian','pary'),
	   (6,'90','janer','fisica');

	   --ingresamos los datos de la tabla socio
	   INSERT INTO gimnasio.socio (ID_socio, Documento_socio, Nombre_socio, Celular, Fecha_ingreso, ID_plan)
	   VALUES (7,'301', 'david',3216957077,'10/10/2009',1),
	          (8,'40','jhonatan',3216951023, '15/01/2010',2),
			  (9,'50','santiago',3216987016, '09/12/2001',3);

--ingresamos los datos de la tabla clase
INSERT INTO gimnasio.clase(ID_clase, Tipo_clase, ID_entrenador)
VALUES (1,'mañana',6),
       (2,'noche',5),
	   (3,'tarde',5);

	   --ingresamos los datos de la tabla tarjeta
	   INSERT INTO gimnasio.tarjeta(ID_tarjeta, Codigo_tarjeta, Fecha_vencimiento, ID_socio)
	   VALUES (4,28,'10/12/2008',7),
	          (5,26,'10/1/2008',8),
			  (6,27,'10/5/2008',9);

--vamos a mostrar los datos de la tabla asistencias
INSERT INTO gimnasio.asistencia( Fecha_, Hora_, ID_socio, ID_clase)
VALUES ('2026/10/10','2026/10/10',8,1),
        ('2026/10/05','2026/10/05',9,2),
		('2026/10/04','2026/10/04',7,3);
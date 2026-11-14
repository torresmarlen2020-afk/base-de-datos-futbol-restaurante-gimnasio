--ingresamos datos a la tabla categoria
INSERT INTO restaurante.categoria(Id_categoria,entradas_categoria,platos_categoria,bebidas_categoria)
VALUES (1,'empenadas de pipian','bandeja paisa','jugo de lulo'),
       (2,'patacones con hogao','sancocho de gallina','limonada de coco'),
	   (3,'erepita con queso','chuleta de cerdo','jugo de mora');

--ingresamos datos a la tabla cliente
INSERT INTO restaurante.cliente(Id_cliente,nombre_cliente,cedula_cliente,celular_cliente,direccion_cliente,barrio_cliente)
VALUES (1,'Marta','1234500865','3245678245','calle 5# 9-45','siloe'),
        (2,'Luis','1234576086','3255678245','calle 6# 8-46','jardin'),
		(3,'Laura','1564576086','3344678245','calle 7# 5-47','siloe');

--ingresamos datos a la tabla domiciliario
INSERT INTO restaurante.domiciliario(Id_domiciliario,nombre_domiciliario,apellido_domiciliario,celular_domiciliario)
VALUES (1,'Sofia','Lara','3216347826'),
       (2,'Maria','Mendez','3245678902'),
	   (3,'Camilo','Ruiz','3245624562');

--ingresamos datos a la tabla domiciliario plato
INSERT INTO restaurante.plato(Id_plato,nombre_plan,precio_plan,Id_categoria)
VALUES (1,'Lisa','20.000','1'),
       (2,'Estiven','40.000','2'),
	   (3,'Santiago','30.000','3');

--ingresamos datos a la tabla domiciliario moto 
INSERT INTO restaurante.moto(Id_moto,placa_moto,modelo_moto,vencimiento_soat,Id_domiciliario)
VALUES (1,'ABC-12D','2021','2026-12-15','1'),
       (2,'JKL-78B','2019','2016-11-30','2'),
	   (3,'MNO-23C','2022','2026-10-20','3');
	   
--ingresamos datos a la tabla domiciliario pedido
INSERT INTO restaurante.pedido(Id_pedido,cantidad_pedido,estado_pedido,Id_cliente,Id_domiciliario)
VALUES (1,'5','entregado','1','1'),
       (2,'6','en camino','2','2'),
	   (3,'7','pendiente','3','3');

--ingresamos datos a la tabla domiciliario detalle
INSERT INTO restaurante.datalle(Id_detalle,cantidad_detalle,Id_plato,Id_pedido)
VALUES (1,'8','1','1'),
       (2,'9','2','2'),
	   (3,'10','3','3');
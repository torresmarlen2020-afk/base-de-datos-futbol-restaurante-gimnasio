--vamos a eliminar esquema base de datos
DROP SCHEMA public;
 --creamos esquema para nustra base de datos

CREATE SCHEMA IF NOT EXISTS gimnasio;
--creamos tabla para las entidades independientes

CREATE TABLE IF NOT EXISTS gimnasio.plan(
ID_plan INT UNIQUE NOT NULL,
Nombre_plan varchar (50)NOT NULL,
Duracion_meses INT NOT NULL,
Precio_ DECIMAL (10,2) NOT NULL
); 

--creamos segunda tabla para las entidades independientes
CREATE TABLE IF NOT EXISTS gimnasio.entrenador(
ID_entrenador varchar UNIQUE NOT NULL,
documento_ varchar(20) NOT NULL,
Nombre_entrenador varchar (80) NOT NULL,
Especialidad_entrenaador varchar (60) NOT NULL
);

--creamos tercera tabla para las entidades dependientes
CREATE TABLE IF NOT EXISTS gimnasio.socio(
ID_socio varchar UNIQUE NOT NULL,
Documento_socio varchar (20) NOT NULL,
Nombre_socio varchar (80) NOT NULL,
Celular varchar (10) NOT NULL,
Fecha_ingreso DATE NOT NULL,
ID_plan INT NOT NULL,

CONSTRAINT fk_plan FOREIGN KEY (ID_plan) REFERENCES gimnasio.plan(ID_plan)
);

--creamos cuarta tabla para las entidades dependientes
CREATE TABLE IF NOT EXISTS gimnasio.clase(
ID_clase varchar UNIQUE NOT NULL,
Tipo_clase varchar(50) NOT NULL,
ID_entrenador varchar NOT NULL,

CONSTRAINT fk_entrenador FOREIGN KEY (ID_entrenador) REFERENCES gimnasio.entrenador(ID_entrenador)
);

--creamos quinta tabla para las entidades dependientes
CREATE TABLE IF NOT EXISTS gimnasio.tarjeta(
ID_tarjeta varchar UNIQUE NOT NULL,
Codigo_tarjeta varchar (50) NOT NULL,
Fecha_vencimiento DATE NOT NULL,
ID_socio varchar NOT NULL,

CONSTRAINT fk_socio FOREIGN KEY (ID_socio) REFERENCES gimnasio.socio(ID_socio)
);

--creamos sexta tabla para las entidades dependientes
CREATE TABLE IF NOT EXISTS gimnasio.asistencia(
Fecha_ DATE UNIQUE NOT NULL,
Hora_ DATE NOT NULL,
ID_socio varchar NOT NULL,
ID_clase varchar NOT NULL,
CONSTRAINT fk_socio FOREIGN KEY (ID_socio) REFERENCES gimnasio.socio(ID_socio),
CONSTRAINT fk_clase FOREIGN KEY (ID_clase) REFERENCES gimnasio.clase(ID_clase)
);
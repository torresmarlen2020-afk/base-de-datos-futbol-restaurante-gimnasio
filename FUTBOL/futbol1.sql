--vamos a borrar esquema base de datos
DROP SCHEMA public;

--creamos tabla para nuestra base de datos
CREATE SCHEMA IF NOT EXISTS futbol

--creamos tabla para nuestras entidades independientes
CREATE TABLE IF NOT EXISTS futbol.fichas(
id_fichas INT UNIQUE NOT NULL,
codigo varchar (15) NOT NULL,
programa varchar (40)NOT NULL,
jornada varchar (20) NOT NULL
);

--creamos tabla para nuestras entidades independientes
CREATE TABLE IF NOT  EXISTS futbol.canchas(
id_canchas INT UNIQUE NOT NULL,
nombre varchar (20) NOT NULL,
ubicacion varchar (20) NOT NULL,
capacidad INT NOT NULL
);

--creamos tabla para nuestras entidades independientes
CREATE TABLE IF NOT EXISTS futbol.arbitros(
id_arbitros INT UNIQUE NOT NULL,
documento varchar (10) NOT NULL,
nombre varchar (20) NOT NULL,
celular varchar (10) NOT NULL
);


--creamos tabla para nuestras entidades dependientes
CREATE TABLE IF NOT EXISTS futbol.equipos(
id_equipos INT UNIQUE NOT NULL,
nombre varchar (20) NOT NULL,
color_camisa varchar (20) NOT NULL,
id_fichas INT NOT NULL,
CONSTRAINT fk_fichas FOREIGN KEY (id_fichas) REFERENCES futbol.fichas(id_fichas)
);

--creamos tabla para nuestras entidades pendientes
CREATE TABLE IF NOT EXISTS futbol.jugadores(
id_jugadores INT UNIQUE NOT NULL,
documento varchar (20) NOT NULL,
nombre varchar (20) NOT NULL,
fecha_nacimiento DATE NOT NULL,
numero_camisa INT NOT  NULL,
id_equipos INT NOT NULL,
CONSTRAINT fk_equipos FOREIGN KEY (id_equipos) REFERENCES futbol.equipos(id_equipos)
);

--creamos tabla para nuestras entidades dependientes
CREATE TABLE IF NOT EXISTS futbol.partidos(
id_partidos INT UNIQUE NOT NULL,
fecha DATE NOT NULL,
hora TIME NOT NULL,
fase  varchar (20) NOT NULL,
id_canchas INT NOT NULL,
CONSTRAINT fk_canchas FOREIGN KEY (id_canchas) REFERENCES futbol.canchas(id_canchas)
);

--creamos nuestra tabla para entidades dependientes 
CREATE TABLE IF NOT EXISTS futbol.asistencias(
id_asistencias INT UNIQUE NOT NULL,
fecha DATE NOT NULL,
hora TIME NOT NULL,
id_partido INT NOT NULL,
id_arbitros INT NOT NULL,
CONSTRAINT fk_arbitros FOREIGN KEY (id_arbitros) REFERENCES futbol.arbitros(id_arbitros)
);

--creamos tabla para nuestras entidaes dependientes
CREATE TABLE IF NOT EXISTS futbol.participaciones(
id_participaciones INT UNIQUE NOT NULL,
tarjeta varchar (20) NOT NULL,
tiempo TIME NOT NULL,
id_jugadores INT NOT NULL,
id_partidos INT NOT NULL,
CONSTRAINT fk_jugadores FOREIGN KEY (id_jugadores) REFERENCES futbol.jugadores(id_jugadores),
CONSTRAINT fk_partidos FOREIGN KEY (id_partidos) REFERENCES futbol.partidos(id_partidos)
);
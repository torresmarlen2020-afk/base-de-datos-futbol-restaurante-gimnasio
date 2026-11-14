--vamos a borrar el esqema de datos por defecto
DROP SCHEMA public;

--creamos esquema para nuestra base datos
CREATE SCHEMA IF NOT EXISTS restaurante;

--creamos tabla para esquema de datos independiente
CREATE TABLE IF NOT EXISTS restaurante.categoria(
Id_categoria INT UNIQUE NOT NULL primary key,
entradas_categoria VARCHAR(20) NOT NULL,
platos_categoria VARCHAR(20) NOT NULL,
bebidas_categoria VARCHAR(20) NOT NULL
);

--creamos tabla para nuestro esquema de datos independiente
CREATE TABLE IF NOT EXISTS restaurante.cliente(
Id_cliente INT UNIQUE NOT NULL primary key,
nombre_cliente VARCHAR(20) NOT NULL,
cedula_cliente VARCHAR(10) NOT NULL,
celular_cliente VARCHAR(10) NOT NULL,
direccion_cliente VARCHAR(15) NOT NULL,
barrio_cliente VARCHAR(20) NOT NULL
);

--cremos tabla para nuestro esquema de datos independiente
CREATE TABLE IF NOT EXISTS restaurante.domiciliario(
Id_domiciliario INT UNIQUE NOT NULL primary key,
nombre_domiciliario VARCHAR(20) NOT NULL,
apellido_domiciliario VARCHAR(20) NOT NULL,
celular_domiciliario VARCHAR(20) NOT NULL
);


--creamos tabla para nuestra esuqema de datos dependiente
CREATE TABLE IF NOT EXISTS restaurante.plato(
Id_plato INT UNIQUE NOT NULL primary key,
nombre_plan VARCHAR(20) NOT NULL,
precio_plan DECIMAL(10,2) NOT NULL,
Id_categoria INT NOT NULL,
CONSTRAINT fk_categoria FOREIGN KEY(Id_categoria) REFERENCES restaurante.categoria(Id_categoria)
);

--creamos tabla para nuestro esquema de datos dependiente
CREATE TABLE IF NOT EXISTS restaurante.moto(
Id_moto INT UNIQUE NOT NULL primary key,
placa_moto VARCHAR(10) NOT NULL,
modelo_moto INT NOT NULL,
vencimiento_soat DATE NOT NULL,
Id_domiciliario INT NOT NULL,
CONSTRAINT fk_domiciliario FOREIGN KEY(Id_domiciliario) REFERENCES restaurante.domiciliario(Id_domiciliario)
);

--creamos tabla para nuestro esquema de datos dependiente
CREATE TABLE IF NOT EXISTS restaurante.pedido(
Id_pedido INT UNIQUE NOT NULL primary key,
cantidad_pedido INT NOT NULL,
estado_pedido VARCHAR(30) NOT NULL,
Id_cliente INT NOT NULL,
Id_domiciliario INT NOT NULL,
CONSTRAINT fk_cliente FOREIGN KEY(Id_cliente) REFERENCES restaurante.cliente(Id_cliente),
CONSTRAINT fk_domiciliario FOREIGN KEY (Id_domiciliario) REFERENCES restaurante.domiciliario(Id_domiciliario)
);

--creamos tabla para nuestro esquema de datos independiente
CREATE TABLE IF NOT EXISTS restaurante.datalle(
Id_detalle INT UNIQUE NOT NULL primary key,
cantidad_detalle INT NOT NULL,
Id_plato INT NOT NULL,
Id_pedido INT NOT NULL,
CONSTRAINT fk_plato FOREIGN KEY(Id_plato) REFERENCES restaurante.plato(Id_plato),
CONSTRAINT fk_pedido FOREIGN KEY(Id_pedido) REFERENCES restaurante.pedido(Id_pedido)
);
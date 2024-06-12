CREATE DATABASE GourmetDelightBD;
USE GourmetDelightBD;

-- Crear la tabla de clientes
CREATE TABLE cliente (
    idCliente INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    correoElectronico VARCHAR(100) NOT NULL,
    telefono VARCHAR(15),
    fechaRegistro DATE
);

-- Crear la tabla de menus
CREATE TABLE Menu (
    idMenu INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    precio DECIMAL(10,2) NOT NULL
);

-- Crear la tabla de pedidos
CREATE TABLE Pedido (
    idPedido INT AUTO_INCREMENT PRIMARY KEY,
    idCliente INT,
    fecha DATE,
    total DECIMAL(10,2),
    FOREIGN KEY (idCliente) REFERENCES cliente(idCliente)
);

-- Crear la tabla de detalles de pedidos
CREATE TABLE DetallePedido (
    idPedido INT,
    idMenu INT,
    cantidad INT NOT NULL,
    precioUnitario DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (idPedido) REFERENCES Pedido(idPedido),
    FOREIGN KEY (idMenu) REFERENCES Menu(idMenu)
);
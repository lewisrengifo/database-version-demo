CREATE DATABASE IF NOT EXISTS api_registry_db;
USE api_registry_db;

CREATE TABLE IF NOT EXISTS equipos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    area VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS apis (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(150) NOT NULL,
    version VARCHAR(20) NOT NULL,
    fecha_registro DATE NOT NULL,
    estado VARCHAR(20) NOT NULL,
    equipo_id INT NOT NULL,
    FOREIGN KEY (equipo_id) REFERENCES equipos(id)
);

CREATE TABLE IF NOT EXISTS endpoints (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ruta VARCHAR(255) NOT NULL,
    metodo_http VARCHAR(10) NOT NULL,
    descripcion VARCHAR(255),
    api_id INT NOT NULL,
    FOREIGN KEY (api_id) REFERENCES apis(id)
);

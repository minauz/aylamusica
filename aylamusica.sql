DROP DATABASE aylamusica;

CREATE DATABASE aylamusica;

USE aylamusica;

CREATE TABLE cancion(
    cancion_id INT NOT NULL AUTO_INCREMENT,
    titulo VARCHAR(255),
    PRIMARY KEY (cancion_id)
);

CREATE TABLE parrafo (
    parrafo_id INT NOT NULL AUTO_INCREMENT,
    cancion_id INT NOT NULL,
    texto_parrafo TEXT,
    PRIMARY KEY (parrafo_id),
    FOREIGN KEY (cancion_id) REFERENCES cancion(cancion_id) ON DELETE CASCADE
);

CREATE TABLE comentario (
    comentario_id INT NOT NULL AUTO_INCREMENT,
    texto_comentario VARCHAR (255),
    parrafo_id INT NOT NULL,
    cancion_id INT NOT NULL,
    PRIMARY KEY (comentario_id),
    FOREIGN KEY (parrafo_id) REFERENCES parrafo(parrafo_id) ON DELETE CASCADE,
    FOREIGN KEY (cancion_id) REFERENCES cancion(cancion_id) ON DELETE CASCADE
);

CREATE TABLE insulto (
    insulto VARCHAR (255),
    PRIMARY KEY (insulto)
);

CREATE TABLE anuncio (
    id_anuncio INT NOT NULL AUTO_INCREMENT,
    link VARCHAR (255),
    correo VARCHAR (255),
    imagen VARCHAR (255),
    visitas INT NOT NULL,
    PRIMARY KEY (id_anuncio)
);
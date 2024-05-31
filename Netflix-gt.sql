
CREATE TABLE `encabezado_pelicula` (
        `pelicula_identificador` INT NOT NULL AUTO_INCREMENT,
        `Pelicula_name` VARCHAR(30) NOT NULL,
	`valoracion` VARCHAR(50) NOT NULL,
        `pelicula_extension` INT NOT NULL,
        PRIMARY KEY (`pelicula_identificador`),
        FOREIGN KEY (`pelicula_identificador`) REFERENCES `detalle_pelicula`(`pelicula_identificador`)
) ENGINE = InnoDB;

CREATE TABLE `detalle_pelicula` (
        `pelicula_identificador` INT NOT NULL AUTO_INCREMENT,
        `descri_pelicula` VARCHAR(120) NOT NULL,
	`clasificacion` REAL NOT NULL,
	`pelicula_año`: VARCHAR(20) NOT NULL,
	PRIMARY KEY (`pelicula_identificador`),
        FOREIGN KEY (`pelicula_identificador`) REFERENCES `elenco_sP`(`pelicula_identificador`)
) ENGINE = InnoDB;

CREATE TABLE `elenco_sP` (
		`Rol_Elenco` INT NOT NULL,
		`Nombre` VARCHAR(50) NOT NULL,
		`Apellido` VARCHAR(50) NOT NULL,
		`Edad` INT NOT NULL,
		PRIMARY KEY (`pelicula_identificador`),
        	FOREIGN KEY (`pelicula_identificador`) REFERENCES `elenco_sP`(`pelicula_identificador`)
) ENGINE = InnoDB;

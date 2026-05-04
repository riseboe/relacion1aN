/* Un Club puede tener muchos Corredores,
   pero un corredor solo pertenece a un club.*/
CREATE DATABASE run;
USE run;

-- Relacion 1 a N.

CREATE TABLE club (
	id_club TINYINT UNSIGNED,
    nombre_club VARCHAR(20) NULL,
    PRIMARY KEY(id_club)
);

CREATE TABLE corredores(
	id_corredor TINYINT UNSIGNED AUTO_INCREMENT,
    cedula CHAR(9) NOT NULL,
	nombre VARCHAR(20) NOT NULL,
    PRIMARY KEY(id_corredor),
    
    
    -- Foranea
    id_club TINYINT UNSIGNED,
    
    FOREIGN KEY 
			(id_club)
    REFERENCES 
			club(id_club)
	ON DELETE SET NULL  -- Si elimino un club, se queda el corredor con campo null
    ON UPDATE CASCADE   -- Si actualizo un club, se actualiza tambien en la tabla corredores
);

-- Insertamos datos a tabla club.
INSERT INTO 
	club(id_club, nombre_club)
VALUES
	(1, 'Aguada Atletismo'),
    (2, 'FitPoint'),
    (3, 'Power Running'),
    (4, 'Runners UY');
    
-- Insertamos datos a tabla corredores.

INSERT INTO 
	corredores(cedula, nombre, id_club)
VALUES
	('123456789', 'Ricardo', 3),
    ('987654321', 'Sebastian', 2),
    ('123987654', 'Lucho', 1),
    ('987987987', 'Facu', 4);



-- Consultamos las tablas
SELECT * FROM club;
SELECT * FROM corredores;






    
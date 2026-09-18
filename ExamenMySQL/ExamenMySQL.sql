-- CREATE DATABASE IF NOT EXISTS Hospital_examen;
USE Hospital_examen;

-- TABLA ESPECIALIDADES

-- CREATE TABLE especialidades (
    -- id_especialidad INT AUTO_INCREMENT PRIMARY KEY,
    -- especialidad VARCHAR(100) NOT NULL UNIQUE
-- );

-- TABLA ATS

-- CREATE TABLE ATS (
--    id_empleado INT AUTO_INCREMENT PRIMARY KEY,
--    nombre VARCHAR(50) NOT NULL,
--    apellido VARCHAR(50) NOT NULL,
--    tipo_empleado VARCHAR(50) NOT NULL,
--    horarios VARCHAR(100)
-- );

-- TABLA PACIENTES

-- CREATE TABLE pacientes (
--    id_paciente INT AUTO_INCREMENT PRIMARY KEY,
--    nombre VARCHAR(50) NOT NULL,
--    primer_apellido VARCHAR(50) NOT NULL,
--    segundo_apellido VARCHAR(50),
--    fecha_nacimiento DATE,
--    telefono VARCHAR(20),
--    correo_electronico VARCHAR(100)
-- );

-- TABLA DOCTOR

-- DROP TABLE IF EXISTS doctor;

-- CREAR TABLA DOCTOR
-- CREATE TABLE doctor (
--    id_doctor INT AUTO_INCREMENT PRIMARY KEY,
--    nombre VARCHAR(50) NOT NULL,
--    apellido VARCHAR(50) NOT NULL,
--    segundo_apellido VARCHAR(50),
--    id_especialidad INT NOT NULL,
--    disponibilidad VARCHAR(100),
--    tipo_medico VARCHAR(50),
--    correo_electronico VARCHAR(100),
--    FOREIGN KEY (id_especialidad) 
--        REFERENCES especialidades(id_especialidad)
-- );

-- TABLA CONSULTAS

-- CREATE TABLE consultas (
--    id_consulta INT AUTO_INCREMENT PRIMARY KEY,
--    id_doctor INT NOT NULL,
--    id_empleado INT NOT NULL,
--    id_paciente INT NOT NULL,
--    fecha DATETIME NOT NULL,
--    FOREIGN KEY (id_doctor) REFERENCES doctor(id_doctor),
--    FOREIGN KEY (id_empleado) REFERENCES ATS(id_empleado),
--    FOREIGN KEY (id_paciente) REFERENCES pacientes(id_paciente)
-- );


-- TABLA VACACIONES

-- CREATE TABLE Vacaciones (
--    id_empleado INT NOT NULL,
--    id_doctor INT NOT NULL,
--    total_consultas INT DEFAULT 0,
--    proximas_vacaciones DATE,
--    Ultimas_vacaciones DATE,
--    PRIMARY KEY (id_empleado, id_doctor),
--    FOREIGN KEY (id_empleado) REFERENCES ATS(id_empleado),
--    FOREIGN KEY (id_doctor) REFERENCES doctor(id_doctor)
-- );
-- VALUES DE ESPECIALIDADES

-- DROP TABLE IF EXISTS especialidades;

-- CREATE TABLE especialidades (
--    id_especialidad INT AUTO_INCREMENT PRIMARY KEY,
--    especialidad VARCHAR(100) NOT NULL
-- );

-- INSERT INTO especialidades (especialidad) VALUES
-- ('Medicina Interna'),
-- ('Medicina de Urgencias'),
-- ('Geriatría'),
-- ('Ginecología y Obstetricia'),
-- ('Auxiliar');

-- SELECT * FROM especialidades;
-- SHOW TABLES;








-- Datos de las tablas

-- INSERT INTO ATS (nombre, apellido, tipo_empleado, horarios) VALUES
-- ('Marilud', 'Uribe', 'Enfermera', '07:00 - 15:00'),
-- ('Raul', 'Calvo', 'Enfermero', '08:00 - 16:00'),
-- ('Valeria', 'Rodríguez', 'Auxiliar', '09:00 - 17:00'),
-- ('Javier', 'Suarez', 'Enfermero', '15:00 - 23:00'),
-- ('Leidy', 'Berrio', 'Auxiliar', '16:00 - 00:00');

-- INSERT INTO pacientes 
-- nombre, primer_apellido, segundo_apellido, fecha_nacimiento, telefono, correo_electronico) 
-- VALUES
-- ('María', 'López', 'García', '1998-05-12', '3001234567', 'maria.lopez@gmail.com'),
-- ('Juan', 'Hernández', 'Pérez', '1985-09-20', '3012345678', 'juan.hernandez@gmail.com'),
-- ('Camila', 'Torres', 'Rodríguez', '2001-03-15', '3023456789', 'camila.torres@gmail.com'),
-- ('Andrés', 'Martínez', 'Gómez', '1978-11-08', '3034567890', 'andres.martinez@gmail.com'),
-- ('Sofía', 'Ramírez', 'Castro', '1995-07-25', '3045678901', 'sofia.ramirez@gmail.com');

-- --------------------------------------------------------
INSERT INTO doctor 
 (nombre, apellido, segundo_apellido, id_especialidad, disponibilidad, tipo_medico, correo_electronico)
 VALUES
 ('Carlos', 'Gómez', 'Ramírez', 1, 'Lunes a Viernes 07:00 - 15:00', 'Especialista', 'carlos.gomez@hospital.com'),
 ('Laura', 'Martínez', 'Torres', 2, 'Lunes a Viernes 08:00 - 16:00', 'Especialista', 'laura.martinez@hospital.com'),
 ('Andrés', 'Rodríguez', 'Pérez', 3, 'Lunes a Viernes 09:00 - 17:00', 'Especialista', 'andres.rodriguez@hospital.com'),
 ('Sofía', 'Hernández', 'López', 4, 'Lunes a Viernes 10:00 - 18:00', 'Especialista', 'sofia.hernandez@hospital.com'),
 ('Daniel', 'Ramírez', 'García', 5, 'Lunes a Viernes 12:00 - 20:00', 'Especialista', 'daniel.ramirez@hospital.com');


-- SELECT * FROM doctor;
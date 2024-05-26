CREATE DATABASE idrd

CREATE TABLE Materiales (
  idMateriales INTEGER NOT NULL AUTO_INCREMENT,
  codigo INT(20) UNIQUE NOT NULL,
  descripcion VARCHAR(255) UNIQUE NOT NULL,
  unidad ENUM('m2','und','kg')NOT NULL,
  precio DECIMAL(5,2),
  PRIMARY KEY(idMateriales)
);

CREATE TABLE Departamentos (
  idDepartamento INTEGER  NOT NULL,
  nombreDepartamento VARCHAR(20) NOT NULL,
  PRIMARY KEY(idDepartamento)
);

CREATE TABLE Cuidad (
  idCuidad INTEGER  NOT NULL,
  Departamentos_idDepartamento INTEGER NOT NULL,
  nombreCuidad VARCHAR(20) NOT NULL,
  estado INT(2) NOT NULL,
  PRIMARY KEY(idCuidad),
  INDEX Cuidad_FKIndex1(Departamentos_idDepartamento),
  FOREIGN KEY(Departamentos_idDepartamento)
    REFERENCES Departamentos(idDepartamento)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

CREATE TABLE Proyectos (
  idProyectos INTEGER NOT NULL AUTO_INCREMENT,
  Departamentos_idDepartamento INTEGER NOT NULL,
  Cuidad_idCuidad INTEGER NOT NULL,
  nombreProyecto VARCHAR(20) UNIQUE NOT NULL,
  PRIMARY KEY(idProyectos),
  INDEX Proyectos_FKIndex1(Cuidad_idCuidad),
  INDEX Proyectos_FKIndex2(Departamentos_idDepartamento),
  FOREIGN KEY(Cuidad_idCuidad)
    REFERENCES Cuidad(idCuidad)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(Departamentos_idDepartamento)
    REFERENCES Departamentos(idDepartamento)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

CREATE TABLE Proyectos_has_Materiales (
  Proyectos_idProyectos INTEGER  NOT NULL,
  Materiales_idMateriales INTEGER  NOT NULL,
  PRIMARY KEY(Proyectos_idProyectos, Materiales_idMateriales),
  INDEX Proyectos_has_Materiales_FKIndex1(Proyectos_idProyectos),
  INDEX Proyectos_has_Materiales_FKIndex2(Materiales_idMateriales),
  FOREIGN KEY(Proyectos_idProyectos)
    REFERENCES Proyectos(idProyectos)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(Materiales_idMateriales)
    REFERENCES Materiales(idMateriales)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

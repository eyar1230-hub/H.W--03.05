
  
CREATE TABLE cars (
  id    INTEGER PRIMARY KEY,
  model TEXT    NOT NULL,
  price REAL    NOT NULL
);

INSERT INTO cars VALUES
  (1,'Toyota Corolla',22000),
  (2,'Honda Civic',24000),
  (3,'Ford Focus',19000),
  (4,'Tesla Model 3',42000);




CREATE TABLE drivers (
  id     INTEGER PRIMARY KEY,
  name   TEXT    NOT NULL,
  car_id INTEGER,
  FOREIGN KEY (car_id) REFERENCES cars(id)
);

INSERT INTO drivers VALUES
  (1,'Dana',1),
  (2,'Omar',2),
  (3,'Noa',NULL),
  (4,'Liam',3),
  (5,'Rina',NULL);
  
  

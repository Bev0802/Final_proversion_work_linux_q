CREATE DATABASE Human_friends;

USE Human_friends;

CREATE TABLE animal_classes
    (
    Id INT AUTO_INCREMENT PRIMARY KEY, 
    Class_name VARCHAR(20)
    );

INSERT INTO animal_classes (Class_name)
    VALUES ('вьючные'),
			('домашние');

CREATE TABLE packed_animals
    (
    Id INT AUTO_INCREMENT PRIMARY KEY,
       Genus_name VARCHAR (20),
       Class_id INT,
       FOREIGN KEY (Class_id) REFERENCES animal_classes (Id) ON DELETE CASCADE ON UPDATE CASCADE
    );

INSERT INTO packed_animals (Genus_name, Class_id)
    VALUES ('Лошади', 1),
		   ('Ослы', 1),  
		   ('Верблюды', 1); 

CREATE TABLE home_animals
   (
      Id INT AUTO_INCREMENT PRIMARY KEY,
      Genus_name VARCHAR (20),
      Class_id INT,
      FOREIGN KEY (Class_id) REFERENCES animal_classes (Id) ON DELETE CASCADE ON UPDATE CASCADE
   );
INSERT INTO home_animals (Genus_name, Class_id)
   VALUES ('Кошки', 2),
		  ('Собаки', 2),  
		  ('Хомяки', 2); 

#Результа:
SHOW TABLES;
#-------------------------+
#| Tables_in_Human_friends |
#+-------------------------+
#| animal_classes          |
#| home_animals            |
#| packed_animals          |
#+-------------------------+

SELECT * FROM animal_classes;
#--------------------------+
#| animal_classes		   |
#+-------------------------+
#| вьючные		           |
#| домашние		           |
#+-------------------------+

SELECT * FROM home_animals;
#+----+--------------+----------+
#| Id | Genus_name   | Class_id |
#+----+--------------+----------+
#|  1 | Кошки        |        2 |
#|  2 | Собаки       |        2 |
#|  3 | Хомяки       |        2 |
#+----+--------------+----------+

SELECT * FROM packed_animals;
#+----+------------------+----------+
#| Id | Genus_name       | Class_id |
#+----+------------------+----------+
#|  1 | Лошади           |        1 |
#|  2 | Ослы             |        1 |
#|  3 | Верблюды         |        1 |
#+----+------------------+----------+

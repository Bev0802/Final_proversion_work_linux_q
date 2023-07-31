mysql> CREATE DATABASE Human_friends;
Query OK, 1 row affected (0,01 sec)

mysql> USE Human_friends;
Database changed
mysql> CREATE TABLE animal_classes
    -> (
    -> Id INT AUTO_INCREMENT PRIMARY KEY, 
    -> Class_name VARCHAR(20)
    -> );
Query OK, 0 rows affected (0,05 sec)

mysql> 
mysql> INSERT INTO animal_classes (Class_name)
    -> VALUES ('вьючные'),
    -> ('домашние');  
Query OK, 2 rows affected (0,01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> 
mysql> 
mysql> CREATE TABLE packed_animals
    -> (
    ->   Id INT AUTO_INCREMENT PRIMARY KEY,
    ->     Genus_name VARCHAR (20),
    ->     Class_id INT,
    ->     FOREIGN KEY (Class_id) REFERENCES animal_classes (Id) ON DELETE CASCADE ON UPDATE CASCADE
    -> );
Query OK, 0 rows affected (0,06 sec)

mysql> 
mysql> INSERT INTO packed_animals (Genus_name, Class_id)
    -> VALUES ('Лошади', 1),
    -> ('Ослы', 1),  
    -> ('Верблюды', 1); 
Query OK, 3 rows affected (0,00 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql>     
mysql> CREATE TABLE home_animals
    -> (
    ->   Id INT AUTO_INCREMENT PRIMARY KEY,
    ->     Genus_name VARCHAR (20),
    ->     Class_id INT,
    ->     FOREIGN KEY (Class_id) REFERENCES animal_classes (Id) ON DELETE CASCADE ON UPDATE CASCADE
    -> );
Query OK, 0 rows affected (0,05 sec)

mysql> 
mysql> INSERT INTO home_animals (Genus_name, Class_id)
    -> VALUES ('Кошки', 2),
    -> ('Собаки', 2),  
    -> ('Хомяки', 2); 
Query OK, 3 rows affected (0,01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> 
mysql> CREATE TABLE cats 
    -> (       
    ->     Id INT AUTO_INCREMENT PRIMARY KEY, 
    ->     Name VARCHAR(20), 
    ->     Birthday DATE,
    ->     Commands VARCHAR(50),
    ->     Genus_id int,
    ->     Foreign KEY (Genus_id) REFERENCES home_animals (Id) ON DELETE CASCADE ON UPDATE CASCADE
    -> );
Query OK, 0 rows affected (0,06 sec)

mysql> USE Human_friends;
Database changed
mysql> REATE TABLE animal_classes
    -> (
    -> Id INT AUTO_INCREMENT PRIMARY KEY, 
    -> Class_name VARCHAR(20)
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'REATE TABLE animal_classes
(
Id INT AUTO_INCREMENT PRIMARY KEY, 
Class_name VARC' at line 1
mysql> SHOW TABLES
    -> SHOW TABLES;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'SHOW TABLES' at line 2
mysql> SHOW TABLES;
+-------------------------+
| Tables_in_Human_friends |
+-------------------------+
| animal_classes          |
| cats                    |
| home_animals            |
| packed_animals          |
+-------------------------+
4 rows in set (0,00 sec)

mysql> SELECT * FROM Tables_in_Human_friends;

+----+------------------+
| Id | Class_name       |
+----+------------------+
|  1 | вьючные          |
|  2 | домашние         |
+----+------------------+
2 rows in set (0,00 sec)

mysql> SELECT * FROM cats;
Empty set (0,00 sec)

mysql> SELECT * FROM home_animals;
+----+--------------+----------+
| Id | Genus_name   | Class_id |
+----+--------------+----------+
|  1 | Кошки        |        2 |
|  2 | Собаки       |        2 |
|  3 | Хомяки       |        2 |
+----+--------------+----------+
3 rows in set (0,00 sec)

mysql> SELECT * FROM packed_animals;
+----+------------------+----------+
| Id | Genus_name       | Class_id |
+----+------------------+----------+
|  1 | Лошади           |        1 |
|  2 | Ослы             |        1 |
|  3 | Верблюды         |        1 |
+----+------------------+----------+
3 rows in set (0,00 sec)

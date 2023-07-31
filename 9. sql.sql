INSERT INTO cats (Name, Birthday, Commands, Genus_id)
VALUES ('Пупа', '2011-01-01', 'кс-кс-кс', 1),
('Олег', '2016-01-01', "отставить!", 1),  
('Тьма', '2017-01-01', "", 1); 

CREATE TABLE dogs 
(       
    Id INT AUTO_INCREMENT PRIMARY KEY, 
    Name VARCHAR(20), 
    Birthday DATE,
    Commands VARCHAR(50),
    Genus_id int,
    Foreign KEY (Genus_id) REFERENCES home_animals (Id) ON DELETE CASCADE ON UPDATE CASCADE
);
INSERT INTO dogs (Name, Birthday, Commands, Genus_id)
VALUES ('Дик', '2020-01-01', 'ко мне, лежать, лапу, голос', 2),
('Граф', '2021-06-12', "сидеть, лежать, лапу", 2),  
('Шарик', '2018-05-01', "сидеть, лежать, лапу, след, фас", 2), 
('Босс', '2021-05-10', "сидеть, лежать, фу, место", 2);

CREATE TABLE hamsters 
(       
    Id INT AUTO_INCREMENT PRIMARY KEY, 
    Name VARCHAR(20), 
    Birthday DATE,
    Commands VARCHAR(50),
    Genus_id int,
    Foreign KEY (Genus_id) REFERENCES home_animals (Id) ON DELETE CASCADE ON UPDATE CASCADE
);
INSERT INTO hamsters (Name, Birthday, Commands, Genus_id)
VALUES ('Малой', '2020-10-12', '', 3),
('Медведь', '2021-03-12', "атака сверху", 3),  
('Ниндзя', '2022-07-11', NULL, 3), 
('Бурый', '2022-05-10', NULL, 3);

CREATE TABLE horses 
(       
    Id INT AUTO_INCREMENT PRIMARY KEY, 
    Name VARCHAR(20), 
    Birthday DATE,
    Commands VARCHAR(50),
    Genus_id int,
    Foreign KEY (Genus_id) REFERENCES packed_animals (Id) ON DELETE CASCADE ON UPDATE CASCADE
);
INSERT INTO horses (Name, Birthday, Commands, Genus_id)
VALUES ('Гром', '2020-01-12', 'бегом, шагом', 1),
('Закат', '2017-03-12', "бегом, шагом, хоп", 1),  
('Байкал', '2016-07-12', "бегом, шагом, хоп, брр", 1), 
('Молния', '2020-11-10', "бегом, шагом, хоп", 1);

CREATE TABLE donkeys 
(       
    Id INT AUTO_INCREMENT PRIMARY KEY, 
    Name VARCHAR(20), 
    Birthday DATE,
    Commands VARCHAR(50),
    Genus_id int,
    Foreign KEY (Genus_id) REFERENCES packed_animals (Id) ON DELETE CASCADE ON UPDATE CASCADE
);
INSERT INTO donkeys (Name, Birthday, Commands, Genus_id)
VALUES ('Первый', '2019-04-10', NULL, 2),
('Второй', '2020-03-12', "", 2),  
('Третий', '2021-07-12', "", 2), 
('Четвертый', '2022-12-10', NULL, 2);

CREATE TABLE camels 
(       
    Id INT AUTO_INCREMENT PRIMARY KEY, 
    Name VARCHAR(20), 
    Birthday DATE,
    Commands VARCHAR(50),
    Genus_id int,
    Foreign KEY (Genus_id) REFERENCES packed_animals (Id) ON DELETE CASCADE ON UPDATE CASCADE
);
INSERT INTO camels (Name, Birthday, Commands, Genus_id)
VALUES ('Горбатый', '2022-04-10', 'вернись', 3),
('Самец', '2019-03-12', "остановись", 3),  
('Сифон', '2015-07-12', "повернись", 3), 
('Борода', '2022-12-10', "улыбнись", 3);
//////////////////////////////////////////////////////////////////////////
mysql> show tables;
+-------------------------+
| Tables_in_Human_friends |
+-------------------------+
| animal_classes          |
| camels                  |
| cats                    |
| dogs                    |
| hamsters                |
| home_animals            |
| horses                  |
| packed_animals          |
+-------------------------+
8 rows in set (0,00 sec)

mysql> SELECT * FROM camels;
+----+------------------+------------+----------------------+----------+
| Id | Name             | Birthday   | Commands             | Genus_id |
+----+------------------+------------+----------------------+----------+
|  1 | Горбатый         | 2022-04-10 | вернись              |        3 |
|  2 | Самец            | 2019-03-12 | остановись           |        3 |
|  3 | Сифон            | 2015-07-12 | повернись            |        3 |
|  4 | Борода           | 2022-12-10 | улыбнись             |        3 |
+----+------------------+------------+----------------------+----------+
4 rows in set (0,00 sec)

mysql> SELECT * FROM cats;
+----+----------+------------+---------------------+----------+
| Id | Name     | Birthday   | Commands            | Genus_id |
+----+----------+------------+---------------------+----------+
|  1 | Пупа     | 2011-01-01 | кс-кс-кс            |        1 |
|  2 | Олег     | 2016-01-01 | отставить!          |        1 |
|  3 | Тьма     | 2017-01-01 |                     |        1 |
+----+----------+------------+---------------------+----------+
3 rows in set (0,00 sec)

mysql> SELECT * FROM dogs;
+----+------------+------------+--------------------------------------------------------+----------+
| Id | Name       | Birthday   | Commands                                               | Genus_id |
+----+------------+------------+--------------------------------------------------------+----------+
|  1 | Дик        | 2020-01-01 | ко мне, лежать, лапу, голос                            |        2 |
|  2 | Граф       | 2021-06-12 | сидеть, лежать, лапу                                   |        2 |
|  3 | Шарик      | 2018-05-01 | сидеть, лежать, лапу, след, фас                        |        2 |
|  4 | Босс       | 2021-05-10 | сидеть, лежать, фу, место                              |        2 |
+----+------------+------------+--------------------------------------------------------+----------+
4 rows in set (0,00 sec)

mysql> SELECT * FROM hamsters;
+----+----------------+------------+-------------------------+----------+
| Id | Name           | Birthday   | Commands                | Genus_id |
+----+----------------+------------+-------------------------+----------+
|  1 | Малой          | 2020-10-12 |                         |        3 |
|  2 | Медведь        | 2021-03-12 | атака сверху            |        3 |
|  3 | Ниндзя         | 2022-07-11 | NULL                    |        3 |
|  4 | Бурый          | 2022-05-10 | NULL                    |        3 |
+----+----------------+------------+-------------------------+----------+
4 rows in set (0,00 sec)

ysql>  SELECT * FROM horses;
+----+--------------+------------+----------------------------------------+----------+
| Id | Name         | Birthday   | Commands                               | Genus_id |
+----+--------------+------------+----------------------------------------+----------+
|  1 | Гром         | 2020-01-12 | бегом, шагом                           |        1 |
|  2 | Закат        | 2017-03-12 | бегом, шагом, хоп                      |        1 |
|  3 | Байкал       | 2016-07-12 | бегом, шагом, хоп, брр                 |        1 |
|  4 | Молния       | 2020-11-10 | бегом, шагом, хоп                      |        1 |
+----+--------------+------------+----------------------------------------+----------+
4 rows in set (0,00 sec)




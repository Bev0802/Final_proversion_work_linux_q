DROP TABLE camels;

SHOW TABLES;
/* +-------------------------+
| Tables_in_Human_friends |
+-------------------------+
| animal_classes          |
| cats                    |
| dogs                    |
| donkeys                 |
| hamsters                |
| home_animals            |
| horses                  |
| packed_animals          |
+-------------------------+ */


SELECT Name, Birthday, Commands
FROM horses
UNION
SELECT Name, Birthday, Commands
FROM donkeys;
/*
+----------+------------+------------------------+
| Name     | Birthday   | Commands               |
+----------+------------+------------------------+
| Гнедой   | 2020-01-12 | бегом, шагом           |
| Закат    | 2017-03-12 | бегом, шагом, хоп      |
| Байкал   | 2016-07-12 | бегом, шагом, хоп, брр |
| Молния   | 2020-11-10 | бегом, шагом, хоп      |
| Гиббон   | 2019-04-10 | NULL                   |
| Макака   | 2020-03-12 |                        |
| Горилла  | 2021-07-12 |                        |
| Шампанзе | 2022-12-10 | NULL                   |
+----------+------------+------------------------+
*/
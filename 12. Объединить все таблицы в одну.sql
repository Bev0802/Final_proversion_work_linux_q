mysql> SELECT h.Name, h.Birthday, h.Commands, pa.Genus_name, ya.Age_in_month 
    -> FROM horses h
    -> LEFT JOIN yang_animal ya ON ya.Name = h.Name
    -> LEFT JOIN packed_animals pa ON pa.Id = h.Genus_id
    -> UNION 
    -> SELECT d.Name, d.Birthday, d.Commands, pa.Genus_name, ya.Age_in_month 
    -> FROM donkeys d 
    -> LEFT JOIN yang_animal ya ON ya.Name = d.Name
    -> LEFT JOIN packed_animals pa ON pa.Id = d.Genus_id
    -> UNION
    -> SELECT c.Name, c.Birthday, c.Commands, ha.Genus_name, ya.Age_in_month 
    -> FROM cats c
    -> LEFT JOIN yang_animal ya ON ya.Name = c.Name
    -> LEFT JOIN home_animals ha ON ha.Id = c.Genus_id
    -> UNION
    -> SELECT d.Name, d.Birthday, d.Commands, ha.Genus_name, ya.Age_in_month 
    -> FROM dogs d
    -> LEFT JOIN yang_animal ya ON ya.Name = d.Name
    -> LEFT JOIN home_animals ha ON ha.Id = d.Genus_id
    -> UNION
    -> SELECT hm.Name, hm.Birthday, hm.Commands, ha.Genus_name, ya.Age_in_month 
    -> FROM hamsters hm
    -> LEFT JOIN yang_animal ya ON ya.Name = hm.Name
    -> LEFT JOIN home_animals ha ON ha.Id = hm.Genus_id;
+--------------------+------------+--------------------------------------------------------+--------------+--------------+
| Name               | Birthday   | Commands                                               | Genus_name   | Age_in_month |
+--------------------+------------+--------------------------------------------------------+--------------+--------------+
| Гром               | 2020-01-12 | бегом, шагом                                           | Лошади       |         NULL |
| Закат              | 2017-03-12 | бегом, шагом, хоп                                      | Лошади       |         NULL |
| Байкал             | 2016-07-12 | бегом, шагом, хоп, брр                                 | Лошади       |         NULL |
| Молния             | 2020-11-10 | бегом, шагом, хоп                                      | Лошади       |           32 |
| Первый             | 2019-04-10 | NULL                                                   | Ослы         |         NULL |
| Второй             | 2020-03-12 |                                                        | Ослы         |         NULL |
| Третий             | 2021-07-12 |                                                        | Ослы         |           24 |
| Четвертый          | 2022-12-10 | NULL                                                   | Ослы         |         NULL |
| Пупа               | 2011-01-01 | кс-кс-кс                                               | Кошки        |         NULL |
| Олег               | 2016-01-01 | отставить!                                             | Кошки        |         NULL |
| Тьма               | 2017-01-01 |                                                        | Кошки        |         NULL |
| Дик                | 2020-01-01 | ко мне, лежать, лапу, голос                            | Собаки       |         NULL |
| Граф               | 2021-06-12 | сидеть, лежать, лапу                                   | Собаки       |           25 |
| Шарик              | 2018-05-01 | сидеть, лежать, лапу, след, фас                        | Собаки       |         NULL |
| Босс               | 2021-05-10 | сидеть, лежать, фу, место                              | Собаки       |           26 |
| Малой              | 2020-10-12 |                                                        | Хомяки       |           33 |
| Медведь            | 2021-03-12 | атака сверху                                           | Хомяки       |           28 |
| Ниндзя             | 2022-07-11 | NULL                                                   | Хомяки       |           12 |
| Бурый              | 2022-05-10 | NULL                                                   | Хомяки       |           14 |
+--------------------+------------+--------------------------------------------------------+--------------+--------------+
19 rows in set (0,00 sec)

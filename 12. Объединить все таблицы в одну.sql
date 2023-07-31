SELECT h.Name, h.Birthday, h.Commands, pa.Genus_name, ya.Age_in_month 
    FROM horses h
    LEFT JOIN yang_animal ya ON ya.Name = h.Name
    LEFT JOIN packed_animals pa ON pa.Id = h.Genus_id
    UNION 
    SELECT d.Name, d.Birthday, d.Commands, pa.Genus_name, ya.Age_in_month 
    FROM donkeys d 
    LEFT JOIN yang_animal ya ON ya.Name = d.Name
    LEFT JOIN packed_animals pa ON pa.Id = d.Genus_id
    UNION
    SELECT c.Name, c.Birthday, c.Commands, ha.Genus_name, ya.Age_in_month 
    FROM cats c
    LEFT JOIN yang_animal ya ON ya.Name = c.Name
    LEFT JOIN home_animals ha ON ha.Id = c.Genus_id
    UNION
    SELECT d.Name, d.Birthday, d.Commands, ha.Genus_name, ya.Age_in_month 
    FROM dogs d
    LEFT JOIN yang_animal ya ON ya.Name = d.Name
    LEFT JOIN home_animals ha ON ha.Id = d.Genus_id
    UNION
    SELECT hm.Name, hm.Birthday, hm.Commands, ha.Genus_name, ya.Age_in_month 
    FROM hamsters hm
    LEFT JOIN yang_animal ya ON ya.Name = hm.Name
    LEFT JOIN home_animals ha ON ha.Id = hm.Genus_id;

/*
+----------+------------+---------------------------------+------------+--------------+
| Name     | Birthday   | Commands                        | Genus_name | Age_in_month |
+----------+------------+---------------------------------+------------+--------------+
| Гнедой   | 2020-01-12 | бегом, шагом                    | Лошади     |         NULL |
| Закат    | 2017-03-12 | бегом, шагом, хоп               | Лошади     |         NULL |
| Байкал   | 2016-07-12 | бегом, шагом, хоп, брр          | Лошади     |         NULL |
| Молния   | 2020-11-10 | бегом, шагом, хоп               | Лошади     |           32 |
| Гиббон   | 2019-04-10 | NULL                            | Ослы       |         NULL |
| Макака   | 2020-03-12 |                                 | Ослы       |         NULL |
| Горилла  | 2021-07-12 |                                 | Ослы       |           24 |
| Шампанзе | 2022-12-10 | NULL                            | Ослы       |         NULL |
| Яша      | 2018-01-01 | кс-кс-кс                        | Кошки      |         NULL |
| Пуся     | 2016-01-01 | сюда                            | Кошки      |         NULL |
| Ляля     | 2010-01-01 | кушать                          | Кошки      |         NULL |
| Грей     | 2020-01-01 | ко мне, лежать, лапу, голос     | Собаки     |         NULL |
| Граф     | 2021-06-12 | сидеть, лежать, лапу            | Собаки     |           25 |
| Шарик    | 2018-05-01 | сидеть, лежать, лапу, след, фас | Собаки     |         NULL |
| Бакс     | 2021-05-10 | сидеть, лежать, фу, место       | Собаки     |           26 |
| Хома     | 2020-10-12 | в норку                         | Хомяки     |           33 |
| Пушистый | 2021-03-12 | атака сверху                    | Хомяки     |           28 |
| Ниндзя   | 2022-07-11 | NULL                            | Хомяки     |           12 |
| Бурый    | 2022-05-10 | NULL                            | Хомяки     |           14 |
+----------+------------+---------------------------------+------------+--------------+
*/
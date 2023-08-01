package Encapsulation;

import java.util.ArrayList;

public class Program {
    public static void main(String[] args) {
        ArrayList<Cat> listCat = new ArrayList<>();
        listCat.add(new Cat(1, "Пуся", "11/05/2016", "иди сюда"));
        listCat.add(new Cat(2, "Яша", "15/07/2018", "лежать"));

        ArrayList<Dog> listDog = new ArrayList<>();
        listDog.add(new Dog(3, "Грей", "08/02/2010", "сидеть, лежать, голос"));
        listDog.add(new Dog(3, "Шарик", "08/02/2010", "сидеть, лежать, голос, апорт"));

        ArrayList<Hamster> listHamster = new ArrayList<>();
        listHamster.add(new Hamster(3, "Хома", "01/01/2010", null));
        listHamster.add(new Hamster(3, "Пушик", "01/01/2010", null));

        ArrayList<Donkey> listDonkey = new ArrayList<>();
        listDonkey.add(new Donkey(3, "Сепа", "01/01/2015", 100));
        listDonkey.add(new Donkey(3, "Ушастик", "01/01/2010", 70));
        
        System.out.println(listCat.toString());
        System.out.println(listDog.toString());
        System.out.println(listHamster.toString());

        System.out.println(listDonkey.toString());
    }
}

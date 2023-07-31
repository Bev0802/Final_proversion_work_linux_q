package Encapsulation;


import java.util.ArrayList;

public class Program {
    public static void main(String[] args) {
        ArrayList<Cat> listCat = new ArrayList<>();
        listCat.add(new Cat(1, "Пуся", "11/05/2016", "иди сюда"));
        listCat.add(new Cat(2, "Яша", "15/07/2018", "лежать"));
        
        System.out.println(listCat.toString());
    }
}

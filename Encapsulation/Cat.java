package Encapsulation;

public class Cat extends Pet{

    public Cat(int id, String name, String birthday, String commands) {
        super(id, name, birthday, commands);
    }       
    @Override
    public String toString() {
        return "\nCat - " + super.toString();
    }
}

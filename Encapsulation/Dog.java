package Encapsulation;

public class Dog extends Pet{

    public Dog(int id, String name, String birthday, String commands) {
        super(id, name, birthday, commands);
    }       
    @Override
    public String toString() {
        return "\nDog - " + super.toString();
    }
}

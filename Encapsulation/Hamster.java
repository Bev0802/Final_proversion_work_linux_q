package Encapsulation;

public class Hamster extends Pet{

    public Hamster(int id, String name, String birthday, String commands) {
        super(id, name, birthday, commands);
    }       
    @Override
    public String toString() {
        return "hamster: " + super.toString();
    }
}

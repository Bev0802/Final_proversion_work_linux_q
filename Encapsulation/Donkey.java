package Encapsulation;

public class Donkey extends Pack{

    public Donkey(int id, String name, String birthday, int weight_cargo) {
        super(id, name, birthday, weight_cargo);
    }

    @Override
    public String toString() {
        return "\nDonkey - " + super.toString();
    }
    
}

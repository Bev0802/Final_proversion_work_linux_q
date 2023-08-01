package Encapsulation;

public class Horses extends Pack{

    public Horses(int id, String name, String birthday, int weight_cargo) {
        super(id, name, birthday, weight_cargo);
    }

    @Override
    public String toString() {
        return "\nHorses - " + super.toString();
    }
    
}

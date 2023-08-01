package Animal_classes;

public class Hamster extends PetType{

    public Hamster(int id, String name, String birthday, String commands) {
        super(id, name, birthday, commands);
    }       
    @Override
    public String toString() {
        return "\nHamster - " + super.toString();
    }
}

package Animal_classes;

public class Dog extends PetType{

    public Dog(int id, String name, String birthday, String commands) {
        super(id, name, birthday, commands);
    }       
    @Override
    public String toString() {
        return "\nDog - " + super.toString();
    }
}

package Animal_classes;

public class Cat extends PetType{

    public Cat(int id, String name, String birthday, String commands) {
        super(id, name, birthday, commands);
    }       
    @Override
    public String toString() {
        return "\nCat - " + super.toString();
    }
}

package Animal_classes;

public class CreatorType extends Creator{
    
    @Override
    protected Pet createNewPet(PetEnum type){

        switch (type) {
            case Cat:
                return new Cat();
            case Dog:
                return new Dog();
            case Hamster:
                return new Hamster();            
        }
        return null;
    }    
}

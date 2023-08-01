package Animal_classes;
import java.time.LocalDate;

public abstract class Creator {
    
    protected abstract Pet createNewPet(PetEnum type);

    public Pet createPet(PetEnum type, String nikename, LocalDate date){       
        Pet pet = createNewPet(type);
        pet.setNickname(nikename);
        pet.setBirthday(date);

        return pet;
    }
}

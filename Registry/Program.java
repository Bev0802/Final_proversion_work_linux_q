import Animal_classes.Pet;
import Controller.*;
import Repository.*;
import UserInterface.*;
/**
 * Main - программа за запуска реестра животных. 
 */
public class Program {
    public static void main(String[] args) throws Exception {

        IdRepo<Pet> listPet = new PetRepo();
        PetController controller = new PetController(listPet);
        new ConsoleMenu(controller).start();
    }
}
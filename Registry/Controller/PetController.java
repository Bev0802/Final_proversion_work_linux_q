package Controller;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import Animal_classes.*;
import Repository.*;
import UserInterface.*;

//* Обработка запросов пользователя.
public class PetController {
    private IdRepo<Pet> petRepo;
    private Creator petCreator;
    private final View<Pet> view;
    private Validator validator;

    public PetController(IdRepo<Pet> petRepo) {
        this.petRepo = petRepo;
        this.petCreator = new CreatorType();
        this.view = new ConsoleView();
        this.validator = new Validator();
    }

    /* Обработка создаение записи */
    public void createPet(PetEnum type) {

        String[] data = new String[] { view.getName(), view.getBirthday() };
        validator.validate(data);
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd.MM.yyyy");
        LocalDate birthday = LocalDate.parse(data[1], formatter);
        try {
            int res = petRepo.create(petCreator.createPet(type, data[0], birthday));
            view.showMessage(String.format("%d запись добавлена", res));
        } catch (RuntimeException e) {
            view.showMessage(e.getMessage());
        }

    }

    /* Обработка изменения записи */
    public void updatePet(int id) {

        Pet pet = getById(id);
        String[] data = new String[] { view.getName(), view.getBirthday() };

        validator.validate(data);

        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd.MM.yyyy");
        LocalDate birthday = LocalDate.parse(data[1], formatter);
        pet.setNickname(data[0]);
        pet.setBirthday(birthday);
        try {
            int res = petRepo.update(pet);
            view.showMessage(String.format("%d запись изменена \n", res));
        } catch (RuntimeException e) {
            view.showMessage(e.getMessage());
        }

    }

    /* Обработка получения всех записей */
    public void getAllPet() {
        try {
            view.printAll(petRepo.getAll(), Pet.class);
        } catch (RuntimeException e) {
            view.showMessage(e.getMessage());
        }
    }

    /* Обработка добавления команды животному */
    public boolean trainPet(int id, String command) {
        try {

            if (((PetRepo) petRepo).getCommandsById(id, 1).contains(command))
                view.showMessage("я это уже знаю");
            else {
                if (!((PetRepo) petRepo).getCommandsById(id, 2).contains(command))
                    view.showMessage("я так не смогу");
                else {
                    ((PetRepo) petRepo).train(id, command);
                    view.showMessage("научился\n");
                    return true;
                }
            }
        } catch (RuntimeException e) {
            view.showMessage(e.getMessage());
        }
        return false;
    }

    // получение ID
    public Pet getById(int id) {
        try {
            return petRepo.getById(id);
        } catch (RuntimeException e) {
            view.showMessage(e.getMessage());
        }
        return null;
    }

    // обработка удаления записи
    public void delete(int id) {
        try {
            petRepo.delete(id);
            view.showMessage("запись удалена");
        } catch (RuntimeException e) {
            view.showMessage(e.getMessage());
        }
    }

    // получение списка команд животного по ID.
    public void getCommands(int id) {
        try {
            view.printAll(((PetRepo) petRepo).getCommandsById(id, 1), String.class);
        } catch (RuntimeException e) {
            view.showMessage(e.getMessage());
        }
    }
}

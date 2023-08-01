package Animal_classes;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

public abstract class Pet {

    protected int id; // - id типа животного
    protected String nickname; // - имя животного
    protected LocalDate birthday; // - день рождения

    // protected Pet(int id, String nickname, LocalDate birthday) {
    // this.id = id;
    // this.nickname = nickname;
    // this.birthday = birthday;
    // }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public void setBirthday(LocalDate data) {
        this.birthday = data;
    }

    public LocalDate getBirthdayDate() {
        return birthday;
    }

    public String getBirthday() {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd.MM.yyyy");
        return formatter.format(birthday);
    }

    @Override
    public String toString() {
        return String.format("%d. %s: кличка: %s, дата рождения: %s", getId(), getClass().getSimpleName(), nickname,
                getBirthday());
    }
}

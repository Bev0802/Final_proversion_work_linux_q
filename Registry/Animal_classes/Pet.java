package Animal_classes;
import java.time.LocalDate;

public abstract class Pet {

    protected int id; // - id типа животного
    protected String nickname; // - имя животного
    protected LocalDate birthday; // - день рождения

    // protected Pet(int id, String nickname, LocalDate birthday) {
    //     this.id = id;
    //     this.nickname = nickname;
    //     this.birthday = birthday;
    // }

    protected int getId() {
        return id;
    }

    protected void setId(int id) {
        this.id = id;
    }

    protected String getNickname() {
        return nickname;
    }

    protected void setNickname(String nickname) {
        this.nickname = nickname;
    }

    protected LocalDate getBirthday() {
        return birthday;
    }

    protected void setBirthday(LocalDate birthday) {
        this.birthday = birthday;
    }

    @Override
    public String toString() {
        return String.format("%d. %s: кличка: %s, дата рождения: %s", getId(), getClass().getSimpleName(), nickname, getBirthday());
      }
}

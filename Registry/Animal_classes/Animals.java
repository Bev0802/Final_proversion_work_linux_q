package Animal_classes;


public abstract class Animals{
    protected int id;               // - id животного
    protected String name;          // - имя животного 
    protected String birthday;        // - день рождения
    
    protected Animals(int id, String name, String birthday) {
        this.id = id;
        this.name = name;
        this.birthday = birthday;
    }

    protected int getId() {
        return id;
    }

    protected void setId(int id) {
        this.id = id;
    }

    protected String getName() {
        return name;
    }

    protected void setName(String name) {
        this.name = name;
    }

    protected String getBirthday() {
        return birthday;
    }

    protected void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    @Override
    public String toString() {
        return "id: " + id + ", name: " + name + ", birthday: " + birthday;
    }    


    
}    



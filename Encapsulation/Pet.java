package Encapsulation;

public abstract class Pet extends Animals {
    protected String commands;

    protected Pet(int id, String name, String birthday, String commands) {
        super(id, name, birthday);
        this.commands = commands;
    }

    protected void setCommands(String commands) {
        this.commands = commands;
    }

    protected String getCommands() {
        return commands;
    }

    @Override
    public String toString() {
        return super.toString() + ", commands: " + commands;
    }
}

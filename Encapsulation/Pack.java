package Encapsulation;

public abstract class Pack extends Animals {
    protected int weight_cargo;
    
    public Pack(int id, String name, String birthday,int weight_cargo) {
        super(id, name, birthday);
        this.weight_cargo=weight_cargo;
    }

    public int getWeight_cargo() {
        return weight_cargo;
    }

    public void setWeight_cargo(int weight_cargo) {
        this.weight_cargo = weight_cargo;
    }

    @Override
    public String toString() {
        return super.toString() + ", weight_cargo: " + weight_cargo;
    }   




}

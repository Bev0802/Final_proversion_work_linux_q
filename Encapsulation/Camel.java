package Encapsulation;

public class Camel extends Pack{

    public Camel(int id, String name, String birthday, int weight_cargo) {
        super(id, name, birthday, weight_cargo);        
    }

    @Override
    public String toString() {       
        return "Camel: " + super.toString();
    }
    
}

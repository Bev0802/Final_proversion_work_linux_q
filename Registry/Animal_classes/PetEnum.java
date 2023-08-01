package Animal_classes;

public enum PetEnum {
    Cat,
    Dog,
    Hamster;

    public static PetEnum getType (int numType){
        switch (numType){
            case 1:
                return PetEnum.Cat;
            case 2:
                return PetEnum.Dog;
            case 3:
                return PetEnum.Hamster;
            default:
                return null;
        }
    }
}
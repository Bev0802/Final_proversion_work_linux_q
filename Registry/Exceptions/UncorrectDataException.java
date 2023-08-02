package Exceptions;
/*
 * Класс наследует страндартный месседж.
*/
public class UncorrectDataException extends RuntimeException{
    
    public UncorrectDataException (String msg) {
        super(msg);
    }
}
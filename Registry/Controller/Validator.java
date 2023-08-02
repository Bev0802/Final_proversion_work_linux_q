package Controller;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;
import java.util.Arrays;
import Exceptions.*;

public class Validator {

    /**
     * Метод проверят полученные данные, если это кличка то передает на проверку в
     * isValidName, а если дата, то в isValidDate, а противном случае выдает
     * стандартный месседж Exception.
     * 
     * @param data
     */
    public void validate(String[] data) {

        StringBuilder sb = new StringBuilder();
        boolean flag = true;

        for (int i = 0; i < data.length; i++) {
            try {
                if (i == 0)
                    isValidName(data[i]);
                if (i == 1)
                    isValidDate(data[i]);

            } catch (UncorrectDataException e) {
                sb.append("\n");
                sb.append(e.getMessage());
                flag = false;
            }
        }
        if (flag == false) {
            throw new UncorrectDataException(sb.toString());
        }
    }

    /**
     * Метод проверят введенную кличку животного на соответствие кириллице.
     * 
     * @param name
     * @return возвращает ошибку-сообщение или ИСТИНА.
     */
    private boolean isValidName(String name) {
        for (int i = 0; i < name.length(); i++) {
            if (!Character.UnicodeBlock.of(name.charAt(i)).equals(Character.UnicodeBlock.CYRILLIC)) {
                throw new UncorrectDataException(String.format("Ошибка! Кличку нужно ввести на русской раскладке."));
            }
        }
        return true;
    }

    /**
     * Метод принимает дату рождения в формате строки и преобразует ее в дату.
     * Проверят день, месяц и год на корректность ввода.
     * 
     * @param birthday
     * @return возвращает либо ошибку либо ИСТИНУ
     */
    private boolean isValidDate(String birthday) {

        LocalDate date;
        Integer[] month_30 = { 4, 6, 9, 11 };
        int day;
        int year;
        LocalDate today;
        int yearToday;
        // проверят введенный формат даты.
        try {
            // DateTimeFormatter задает формат даты в шаблоне.
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd.MM.yyyy");
            // пробразует строку даты в дату по шаблону
            date = LocalDate.parse(birthday, formatter);
            // достает день месяца.
            day = date.getDayOfMonth();
            year = date.getYear();
            today = LocalDate.now();
            yearToday = today.getYear();

        } catch (DateTimeParseException e) {
            throw new UncorrectDataException("некорректный формат даты");
        }

        if ((Arrays.asList(month_30).contains(date.getMonthValue()) && day > 30) ||
                (date.isLeapYear() && date.getMonthValue() == 2 && day > 29) ||
                (!date.isLeapYear() && date.getMonthValue() == 2 && day > 28) ||
                (year > yearToday)) {

            throw new UncorrectDataException("введена некорректная дата рождения");
        } else
            return true;
    }
}
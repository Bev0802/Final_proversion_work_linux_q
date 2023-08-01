package Repository;

import java.util.List;

public interface IdRepo <T> {

    List<T> getAll();
    T getById(int id);
    int create(T item);
    int update(T item);
    void delete(int item);
}

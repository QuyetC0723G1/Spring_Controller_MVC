package com.example.service;

import java.util.List;

public interface IStudent <E> {
    void add(E e);
    E findById(int id);
    List<E> findAll();
    void edit(int id, E e);
    void remove(int id);

    List<E> findByName(String name);
}

package ru.netology.sqldao.service;

import lombok.AllArgsConstructor;
import ru.netology.sqldao.repository.Repository;

import java.util.List;
@org.springframework.stereotype.Service
@AllArgsConstructor
public class Service {
    private Repository repository;
    public List<String> getProductName(String name) {
        return repository.getProductName(name);
    }
}

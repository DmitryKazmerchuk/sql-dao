package ru.netology.sqldao.controller;

import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import ru.netology.sqldao.service.Service;

import java.util.List;
@RestController
@AllArgsConstructor
public class Controller {
    private Service service;

    @GetMapping("/products/fetch-product")
    public List<String> getProductName(@RequestParam(value = "name", required = false) String name) {
        return service.getProductName(name);
    }
}

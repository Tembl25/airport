package com.artem.airport.controllers;

import com.artem.airport.models.Departure;
import com.artem.airport.services.DepartureService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequiredArgsConstructor
public class DepartureController {
    private final DepartureService productService;

    @GetMapping("/")
    public String products(@RequestParam(name = "flight", required = false) String flight, Model model) {
        return "platov";
    }

    @GetMapping("/departures")
    public String showDepartures(@RequestParam(name = "flight", required = false) String flight, Model model) {
        model.addAttribute("products", productService.listProducts(flight));
        return "departures";
    }


    @GetMapping("/product/{id}")
    public String productInfo(@PathVariable Long id, Model model) {
        model.addAttribute("product", productService.getProductById(id));
        return "product-info";
    }

    @PostMapping("/product/create")
    public String createProduct(Departure product) {
        productService.saveProduct(product);
        return "redirect:/";
    }

    @PostMapping("/product/delete/{id}")
    public String deleteProduct(@PathVariable Long id) {
        productService.deleteProduct(id);
        return "redirect:/";
    }
}
package com.artem.airport.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BaggageController {

    @GetMapping("/baggage")
    public String baggagePage() {
        return "baggage";
    }
}

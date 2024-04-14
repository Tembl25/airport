package com.artem.airport.controllers;

import com.artem.airport.models.Arrivals;
import com.artem.airport.services.ArrivalsService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequiredArgsConstructor
public class ArrivalsController {
    private final ArrivalsService arrivalsService;

    @GetMapping("/arrivals")
    public String showArrivals(@RequestParam(name = "flight", required = false) String flight, Model model) {
        model.addAttribute("arrivals", arrivalsService.listArrivals(flight));
        return "arrivals";
    }

    @GetMapping("/arrival/{id}")
    public String arrivalInfo(@PathVariable Long id, Model model) {
        model.addAttribute("arrival", arrivalsService.getArrivalById(id));
        return "product-info2";
    }

    @PostMapping("/arrivals/create")
    public String createArrival(Arrivals arrival) {
        arrivalsService.saveArrival(arrival);
        return "redirect:/arrivals";
    }

    @PostMapping("/arrivals/delete/{id}")
    public String deleteArrival(@PathVariable Long id) {
        arrivalsService.deleteArrival(id);
        return "redirect:/arrivals";
    }
}

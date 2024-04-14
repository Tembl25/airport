package com.artem.airport.services;

import com.artem.airport.models.Departure;
import com.artem.airport.repositories.DepartureRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class DepartureService {
    private final DepartureRepository productRepository;

    public List<Departure> listProducts(String flight) {
        if (flight != null) return productRepository.findByFlight(flight);
        return productRepository.findAll();
    }

    public void saveProduct(Departure product) {
        log.info("Saving new {}", product);
        productRepository.save(product);
    }

    public void deleteProduct(Long id) {
        productRepository.deleteById(id);
    }

    public Departure getProductById(Long id) {
        return productRepository.findById(id).orElse(null);
    }
}
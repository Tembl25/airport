package com.artem.airport.services;

import com.artem.airport.models.Arrivals;
import com.artem.airport.repositories.ArrivalsRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@Slf4j
@RequiredArgsConstructor
public class ArrivalsService {
    private final ArrivalsRepository arrivalsRepository;

    public List<Arrivals> listArrivals(String flight) {
        return flight != null ? arrivalsRepository.findByFlight(flight) : arrivalsRepository.findAll();
    }

    public void saveArrival(Arrivals arrival) {
        log.info("Saving new arrival: {}", arrival);
        arrivalsRepository.save(arrival);
    }

    public void deleteArrival(Long id) {
        arrivalsRepository.deleteById(id);
    }

    public Arrivals getArrivalById(Long id) {
        Optional<Arrivals> optionalArrival = arrivalsRepository.findById(id);
        return optionalArrival.orElse(null);
    }
}

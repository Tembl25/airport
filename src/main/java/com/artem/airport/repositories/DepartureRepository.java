package com.artem.airport.repositories;

import com.artem.airport.models.Departure;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface DepartureRepository extends JpaRepository<Departure, Long> {
    List<Departure> findByFlight(String flight);
}

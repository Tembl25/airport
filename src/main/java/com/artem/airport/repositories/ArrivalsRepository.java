package com.artem.airport.repositories;

import com.artem.airport.models.Arrivals;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ArrivalsRepository extends JpaRepository<Arrivals, Long> {
    List<Arrivals> findByFlight(String flight);
}

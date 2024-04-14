package com.artem.airport.models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import jakarta.persistence.*;

@Entity
@Table(name = "departures")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Departure {
    @Id
    @SequenceGenerator(name = "product_seq", sequenceName = "product_seq", allocationSize = 1, initialValue = 1)
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "product_seq")
    @Column(name = "id")
    private Long id;

    @Column(name = "timeDeparture")
    private String timeDeparture;

    @Column(name = "direction")
    private String direction;

    @Column(name = "flight")
    private String flight;

    @Column(name = "plane")
    private String plane;

    @Column(name = "airline")
    private String airline;

    @Column(name = "terminal")
    private String terminal;

    @Column(name = "exit")
    private String exit;

    @Column(name = "status")
    private String status;
}
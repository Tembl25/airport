package com.artem.airport.models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import jakarta.persistence.*;

@Entity
@Table(name = "arrivals")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Arrivals {
    @Id
    @SequenceGenerator(name = "arrival_seq", sequenceName = "arrival_seq", allocationSize = 1, initialValue = 1)
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "arrival_seq")
    @Column(name = "id")
    private Long id;

    @Column(name = "time_departure")
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

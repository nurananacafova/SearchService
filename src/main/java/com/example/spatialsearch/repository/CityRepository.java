package com.example.spatialsearch.repository;

import com.example.spatialsearch.model.City;
import org.locationtech.jts.geom.Point;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.awt.*;

@Repository
public interface CityRepository extends JpaRepository<City, Long> {
    @Query("SELECT c FROM City c WHERE function('ST_DWithin', c.location, :point, :distance) = true")
    Iterable<City> findNearestCities(Point point, Double distance);
}

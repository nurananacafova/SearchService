package com.example.spatialsearch.service;

import com.example.spatialsearch.dto.CityDto;
import com.example.spatialsearch.dto.CreateCityRequest;
import com.example.spatialsearch.exception.CityNotFoundException;
import com.example.spatialsearch.model.City;
import com.example.spatialsearch.repository.CityRepository;
import lombok.RequiredArgsConstructor;
import org.locationtech.jts.geom.Coordinate;
import org.locationtech.jts.geom.GeometryFactory;
import org.locationtech.jts.geom.Point;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
public class CityService {
    private final CityRepository cityRepository;
    private final GeometryFactory geometryFactory;


    public void create(CreateCityRequest createCityRequest) {
        Point point = geometryFactory.createPoint(new Coordinate(createCityRequest.getLng(), createCityRequest.getLat()));
        City city = new City();
        city.setName(createCityRequest.getName());
        city.setLocation(point);
        cityRepository.save(city);
    }


    public List<CityDto> findAll() {
        List<CityDto> cities = new ArrayList<>();

        cityRepository.findAll().forEach(c -> {
            cities.add(new CityDto(c.getName(), c.getLocation().getY(), c.getLocation().getX()));
        });
        return cities;
    }

    public List<CityDto> findNearestCities(float lat, float lng, double distance) {
        List<CityDto> cities = new ArrayList<>();
        Point point = geometryFactory.createPoint(new Coordinate(lng, lat));
        cityRepository.findNearestCities(point, distance).forEach(c -> {
            cities.add(new CityDto(c.getName(), c.getLocation().getY(), c.getLocation().getX()));
        });

        if (cities.isEmpty()){
            throw new CityNotFoundException("No city found. Please, check distance, longitude or latitude again.");
        }
        else return cities;
    }
}

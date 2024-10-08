package com.example.spatialsearch.controller;

import com.example.spatialsearch.dto.CityDto;
import com.example.spatialsearch.dto.CreateCityRequest;
import com.example.spatialsearch.model.City;
import com.example.spatialsearch.service.CityService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/v1/cities")
@RequiredArgsConstructor
public class CityController {
    private final CityService cityService;

    @PostMapping()
    public void create(@RequestBody CreateCityRequest request) {
        cityService.create(request);
    }

    @GetMapping()
    public List<CityDto> getAll() {
        return cityService.findAll();
    }

    @GetMapping("/nearest")
    public List<CityDto> findNearestCities(@RequestParam("lat") float lat, @RequestParam("lng") float lng, @RequestParam("distance") double distance) {
        return cityService.findNearestCities(lat, lng, distance);
    }
}

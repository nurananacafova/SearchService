package com.example.spatialsearch.config;

import org.locationtech.jts.geom.GeometryFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class GeometryConfig {
    @Bean
    GeometryFactory geometryFactory() {
        return new GeometryFactory();
    }
}

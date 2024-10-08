# Search Near Cities

This is Search Service finds nearest cities.

## Table of Contents

1. [Installation](#installation)
2. [Getting Started](#getting-started)
5. [Built With](#built-with)

## Installation

```
git clone https://github.com/nurananacafova/SearchService.git
```

## Getting Started

* Run the project. Open the Postman

* Add new city:
  
  Post request: http://localhost:8080/api/v1/cities
```
{
  "name": "Goygol",
  "lng": 46.4786,
  "lat": 40.5840
}

```


* Get all cities:
  
  Get request: http://localhost:8080/api/v1/cities


* Find nearest cities:

  Get request: http://localhost:8080/api/v1/cities/nearest?lat=40.5000&lng=48.5000&distance=70000

## Built With

- Spring Boot
- Maven
- PostGIS
- Liquibase

#### Swagger: http://localhost:8080/swagger-ui/index.html

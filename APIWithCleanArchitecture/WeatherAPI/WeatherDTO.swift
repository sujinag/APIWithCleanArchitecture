//
//  WeatherDTO.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 10/03/26.
//

import Foundation

struct WeatherDTO: Codable
{
    
    let location: LocationDTO
    let current: CurrentDTO

}

struct LocationDTO: Codable
{
    let name: String
    let country: String
    func toDomain() -> Location
    {
        Location(name: name,country: country)
    }
}

struct CurrentDTO: Codable
{
    let temperature: Int
   // let weather_descriptions: [String]
    let humidity: Int
   // let wind_speed: Int
    
    func toDomain() -> Current
    {
        Current(temperature: temperature,humidity: humidity)
    }
    
}

extension WeatherDTO{
    
    func toDomain() -> WeatherCurrent{
        WeatherCurrent(location: location.toDomain(), current: current.toDomain())
    }
}

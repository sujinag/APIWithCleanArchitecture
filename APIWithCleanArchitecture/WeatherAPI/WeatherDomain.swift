//
//  WeatherDomain.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 10/03/26.
//

import Foundation

// Domain/Weather.swift

struct Weather {
    let city: String
    let temperature: Int
    let description: String
}

struct WeatherCurrent
{
    let location: Location
    let current: Current
}

struct Location
{
    let name: String
    let country: String
}

struct Current
{
    let temperature: Int
   // let weather_descriptions: [String]
    let humidity: Int
   // let wind_speed: Int
    
}

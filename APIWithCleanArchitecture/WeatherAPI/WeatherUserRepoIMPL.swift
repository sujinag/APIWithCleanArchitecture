//
//  WeatherUserRepoIMPL.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 10/03/26.
//

import Foundation

class WeatherUserRepoIMPL: WeatherUserRepo{
    
    let apiService : WeatherService
    init(apiService : WeatherService){
        self.apiService = apiService
    }
    
    func getData(city: String) async throws -> WeatherCurrent {
        let dto = try await apiService.fetchWeather(city: city)
        return dto.toDomain()
        
    }
    
    
}

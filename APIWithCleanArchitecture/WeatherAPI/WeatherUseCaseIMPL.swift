//
//  WeatherUseCaseIMPL.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 10/03/26.
//

import Foundation


class WeatherUseCaseIMPL : WeatherUseCase {
    //let city: String?

    let repo : WeatherUserRepo
    
    init(repo : WeatherUserRepo){
        self.repo = repo
    }
    
    func execute(city: String) async throws -> WeatherCurrent
    {
        try await  repo.getData(city: city)
    }
    
}

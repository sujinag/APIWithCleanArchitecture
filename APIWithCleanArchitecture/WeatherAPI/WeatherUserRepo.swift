//
//  WeatherUserRepo.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 10/03/26.
//

import Foundation

protocol WeatherUserRepo {
    
    func getData(city: String) async throws -> WeatherCurrent
}

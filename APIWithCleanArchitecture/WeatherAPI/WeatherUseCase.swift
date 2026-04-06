//
//  WeatherUseCase.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 10/03/26.
//

import Foundation

protocol WeatherUseCase
{
     
    func execute(city: String) async throws -> WeatherCurrent
}

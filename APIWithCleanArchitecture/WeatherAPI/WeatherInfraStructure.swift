//
//  WeatherInfraStructure.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 10/03/26.
//

import Foundation


final class WeatherService {

    private let apiKey = "4013eee3d3785c2b3db80b8cd47346b9"

    func fetchWeather(city: String) async throws -> WeatherDTO {

        var components = URLComponents(
            string: "https://api.weatherstack.com/current"
        )!

        components.queryItems = [
            URLQueryItem(name: "access_key", value: apiKey),
            URLQueryItem(name: "query", value: city),
            URLQueryItem(name: "units", value: "m"),
            URLQueryItem(name: "language", value: "en")
        ]

        guard let url = components.url else {
            throw URLError(.badURL)
        }

        let (data, response) = try await URLSession.shared.data(from: url)

        guard let httpResponse = response as? HTTPURLResponse,
              httpResponse.statusCode == 200 else {
            throw URLError(.badServerResponse)
        }

        return try JSONDecoder().decode(WeatherDTO.self,from: data)
    }
}

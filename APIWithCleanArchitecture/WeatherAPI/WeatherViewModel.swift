//
//  WeatherViewModel.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 10/03/26.
//

import Foundation


// Presentation/WeatherViewModel.swift

@MainActor
final class WeatherViewModel: ObservableObject {

    @Published var temperature = ""
    @Published var description = ""

    private let useCase: WeatherUseCase

    init(useCase: WeatherUseCase) {
        self.useCase = useCase
    }

    func load(city: String) async {

        do {
            let weather = try await useCase.execute(city: city)

            temperature = "\(weather.current.temperature)°C"
           // description = weather.description

        } catch {
            print(error)
        }
    }
}

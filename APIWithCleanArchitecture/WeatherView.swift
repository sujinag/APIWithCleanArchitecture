//
//  WeatherView.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 10/03/26.
//

import SwiftUI

struct WeatherView: View {
    @StateObject var weatherViewModel: WeatherViewModel
    init(weatherViewModel: WeatherViewModel) {
        _weatherViewModel = StateObject(wrappedValue: weatherViewModel)
    }

    var body: some View {
        VStack{
            Text("Temp:\(weatherViewModel.temperature)")
        }
        .task{
            await weatherViewModel.load(city: "New York")
        }
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(weatherViewModel: WeatherViewModel(useCase: WeatherUseCaseIMPL(repo: WeatherUserRepoIMPL(apiService: WeatherService()))))
    }
}

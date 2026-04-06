//
//  InformationInfra.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 23/03/26.
//

import Foundation

class InfraInfo{
    
    func getFromInfra() async throws -> [StationsDTO] {
        let url = URL(string:"https://gbfs.citibikenyc.com/gbfs/en/station_information.json")!
        let (data,response) = try await URLSession.shared.data(from: url)
        let decoding = try JSONDecoder()
            .decode(StationResponse.self, from: data)

        return decoding.data.stations
    }
}

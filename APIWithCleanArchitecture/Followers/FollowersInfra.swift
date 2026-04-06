//
//  FollowersInfra.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 26/03/26.
//

import Foundation


class FollowersApiManager {
    
    func getFromInfra() async throws -> [DomainDTOFollowers] {
        let url = URL(string: "https://api.github.com/users/jack-davison/subscriptions")!
        let (data,response) = try await URLSession.shared.data(from: url)
        return try JSONDecoder().decode([DomainDTOFollowers].self,from:data)
    }
}

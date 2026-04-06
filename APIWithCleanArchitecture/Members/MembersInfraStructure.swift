//
//  MembersInfraStructure.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 20/03/26.
//

import Foundation

class MembersAPI{
    
    func getFromMembersInfra() async throws ->[MembersDTO] {
        let url = URL(string: "https://api.github.com/orgs/ggobi/members")!
        let (data,response) = try await URLSession.shared.data(from: url)
        return try JSONDecoder().decode([MembersDTO].self,from: data)
    }
}

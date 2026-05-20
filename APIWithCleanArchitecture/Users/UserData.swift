//
//  UserData.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 18/05/26.
//

import Foundation


struct UserData: Codable {
    let id: Int
    let name: String
    let username: String
    
    func toDomain() -> UsersDomain {
        UsersDomain(id: id,name:name,username:username)
    }
}

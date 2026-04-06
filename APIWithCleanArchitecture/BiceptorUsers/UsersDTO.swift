//
//  UsersDTO.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 03/03/26.
//

import Foundation


struct UsersDTO : Codable {
    
    let name: String
    let photo: String
    let id: Int
    let company: String
    let username: String
    let email: String
    let address: String
    let zip: String
    let state: String
    let country: String
    let phone: String

    func toDomain() -> Users
    {
        Users(name: name, photo: photo,id: id,company:company,username:username,email:email,address:address,zip:zip,state:state,country:country,phone:phone)
    }
}

struct UserResponseDTO : Codable {
    let users : [UsersDTO]
}

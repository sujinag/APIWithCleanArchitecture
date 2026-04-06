//
//  DummyUsersModel.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 05/03/26.
//

import Foundation

struct DomainDummyUsers{
    let id: Int?
    let firstName: String?
    let lastName: String?
    let maidenName: String?
    let age: Int?
    let gender: String?
    let email: String?
    let phone: String?
    let username: String?
    let password: String?
    let birthDate: String?
    let image: String?
    let bloodGroup: String?
    let height: Double?
    let weight: Double?
    let eyeColor: String?
    let hair: DomainHair
    let address: DomainAddress
    
}
struct DomainHair{
    let color: String?
    let type: String?
}
struct DomainAddress{
    let address: String?
    let city: String?
    let state: String?
    let stateCode: String?
    let postalCode:String?
    
    
}

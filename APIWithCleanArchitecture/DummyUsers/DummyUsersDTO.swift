//
//  DummyUsersDTO.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 05/03/26.
//

import Foundation


struct DummyDTO: Codable{
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
    let hair: HairDTO
    let address: AddressDTO
    func toDomain() -> DomainDummyUsers{
        DomainDummyUsers(id: id, firstName: firstName, lastName: lastName, maidenName: maidenName, age: age, gender: gender, email: email, phone: phone, username: username, password: password, birthDate: birthDate, image: image, bloodGroup: bloodGroup, height: height, weight: weight, eyeColor: eyeColor, hair: hair.toDomain(), address: address.toDoamin())
    }

}
struct HairDTO: Codable{
    let color: String?
    let type: String?
    func toDomain() -> DomainHair{
        DomainHair(color: color, type: type)
    }
}
struct AddressDTO: Codable{
    let address: String?
    let city: String?
    let state: String?
    let stateCode: String?
    let postalCode:String?
    
    func toDoamin() -> DomainAddress{
        DomainAddress(address: address, city: city, state: state, stateCode: stateCode, postalCode: postalCode)
    }
    
    
}

struct DummyResponseDTO: Codable{
    let users:[DummyDTO]
}

//
//  IssuesDTO.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 24/03/26.
//

import Foundation

struct IssuesDTO: Codable
{
    
    let url: String
    let id: Int
    let number: Int
    let title: String
    let user: UserDto
    func toDomain() -> DomainIssus{
        DomainIssus(url:url,id:id,number:number,title:title,user: user.toDomain())
    }
    
}

struct UserDto: Codable
{
    let login: String
    let type: String
    func toDomain() -> User{
        User(login:login,type:type)
    }
}

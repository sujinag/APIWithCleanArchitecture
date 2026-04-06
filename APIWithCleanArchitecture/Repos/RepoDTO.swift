//
//  RepoDTO.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 18/03/26.
//

import Foundation

struct RepoDTO : Codable {
    let id :String
    let type: String
    let actor: RepoActorDTO
    let payload: PayloadDTO

    func toDomain() -> RepoDomain {
        RepoDomain(id: id,type: type,actor: actor.toDomain(),payload: payload.toDomain())
    }
}

struct RepoActorDTO: Codable
{
    let id: Int
    let login: String
    let url: String
    
    func toDomain() -> RepoActor{
        RepoActor(id: id,login:login,url:url)
    }
}

struct PayloadDTO: Codable
{
    let action: String
    func toDomain() -> Payload{
        Payload(action: action)
    }
    
}


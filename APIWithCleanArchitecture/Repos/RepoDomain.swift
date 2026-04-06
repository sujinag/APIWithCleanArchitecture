//
//  RepoDomain.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 18/03/26.
//

import Foundation

struct RepoDomain
{
    let id :String
    let type: String
    let actor: RepoActor
    let payload: Payload
    
}

struct RepoActor
{
    let id: Int
    let login: String
    let url: String
}

struct Payload
{
    let action: String
    
}


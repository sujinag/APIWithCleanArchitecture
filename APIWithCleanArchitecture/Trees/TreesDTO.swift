//
//  TreesDTO.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 28/04/26.
//

import Foundation

//struct TreeDTO : Codable
//{
//    let sha: String
//    let url: String
//    let tree : [TreesDTO]
//    
//    func toDomain() -> TreeDomain {
//        TreeDomain(sha:sha,url:url,tree: tree.map{$0.toDomain()})
//    }
//    
//}

struct TreesDTO: Codable
{
    
    let path: String
    let mode: String
    let type: String
    let sha:  String
    let size: Int
    let url:  String
    
    func toDomain() -> Trees {
        Trees(path:path,mode:mode,type:type,sha:sha,size:size,url:url)
    }
    
}

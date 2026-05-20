//
//  TreesDomain.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 28/04/26.
//

import Foundation

//struct TreeDomain
//{
//    let sha: String
//    let url: String
//    let tree : [Trees]
//    
//}

struct Trees
{
    
    let path: String
    let mode: String
    let type: String
    let sha:  String
    let size: Int
    let url:  String
    let id = UUID()

    
}

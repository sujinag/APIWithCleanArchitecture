//
//  BaseUrlEndPoint.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 05/03/26.
//

import Foundation

enum APIEndPoint{
    case baseUrl
    
    var url: URL {
       // let baseUrl = "https://dl.dropboxusercontent.com/"
        let baseUrl = "https://dummyjson.com/"

        //https://dummyjson.com/users
        switch self {
        case .baseUrl:
            return URL(string: "\(baseUrl)")!
        }
    }
}

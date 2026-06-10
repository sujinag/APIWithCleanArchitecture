//
//  ProdData.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 21/05/26.
//

import Foundation


struct ProdDataDTO: Codable
{
    
    let id : Int
    let title: String
    let price: Double
    let description: String
    let category: String
    let image: String
    let rating: RatingDTO

    
    func toDomain() -> ProdDomain{
        ProdDomain(id:id,title: title,price:price,description: description,category: category,image:image,rating: rating.toDomain())
    }
    
}

struct RatingDTO : Codable{
    
    let rate: Double
    let count: Int
    
    func toDomain() -> Rating{
        Rating(rate:rate,count:count)
    }
}


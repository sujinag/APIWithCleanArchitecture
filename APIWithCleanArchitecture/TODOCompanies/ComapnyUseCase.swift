//
//  UseCase.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 09/03/26.
//

import Foundation

protocol ComapnyUseCase{
    
    func execute() async throws -> [Companies]
}

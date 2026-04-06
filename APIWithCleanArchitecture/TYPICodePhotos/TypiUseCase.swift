//
//  TypiUseCase.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 10/03/26.
//

import Foundation

protocol TypiUseCase
{
    func execute() async throws -> [TypiCodePhotos]
}

//
//  ViewModel.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 03/03/26.
//

import Foundation
@MainActor
class ViewModel: ObservableObject {
    @Published var users : [Users] = []
    @Published var err : String?
    let useCase: UseCase
    init (usecase: UseCase){
        self.useCase = usecase
    }
    func fetchImages(){
        Task {
            await loadingUsers()
        }
    }
    
    func loadingUsers () async{
        do {
            users = try await useCase.execute()
        }
        catch{
            err = error.localizedDescription
        }
    }
}

//
//  UsersViewModel.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 18/05/26.
//

import Foundation

@MainActor
final class UsersViewModel: ObservableObject {
    @Published var users : [UsersDomain] = []
    @Published var err: String?
    
    let useCase: UserUseCase
    init(useCase: UserUseCase)
    {
        self.useCase = useCase
    }
    
//    func fetchData(){
//        Task {
//            await loadImages()
//        }
//    }
    
    func loadImages() async {
            do {
                
                users = try await useCase.execute()
            }
            catch {
                err = error.localizedDescription
            }
        }
        
    
}

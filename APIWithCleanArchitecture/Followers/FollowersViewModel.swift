//
//  FollowersViewModel.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 26/03/26.
//

import Foundation

@MainActor
class FollowersViewModel: ObservableObject {
    @Published var followers: [DomainFollowers] = []
    @Published var err: String?
    let useCase: UseCaseFollowers
    init(useCase: UseCaseFollowers)
    {
        self.useCase = useCase
    }
    
    
    func loadData(){
        Task{
            await fetchFollowers()
        }
    }
    
    func fetchFollowers() async {
        do {
            followers = try await useCase.execute()
        }
        catch{
            err = error.localizedDescription
        }
    }
    
    
    //let use
}

//
//  CommitsViewModel.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 24/04/26.
//

import Foundation

@MainActor
class CommitsViewModel: ObservableObject {
    
    @Published var commits: [CommitsDomain] = []
    @Published var err: String?
    
    let useCase: CommitsUseCase
    init(useCase: CommitsUseCase){
        self.useCase = useCase
    }
    
    
    func loadData()
    {
        Task
        {
            await fetchData()
        }
    }
    
    
    func fetchData() async
    {
            do
            {
                commits = try await useCase.execute()
            }
            catch
            {
                err = error.localizedDescription
            }
        
    }
    
}

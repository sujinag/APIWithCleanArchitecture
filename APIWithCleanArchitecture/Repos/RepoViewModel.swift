//
//  RepoViewModel.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 18/03/26.
//

import Foundation
@MainActor
class RepoViewModel: ObservableObject {
    @Published var repoData: [RepoDomain] = []
    @Published var err:String?
    let repoUseCase: RepoUseCase
    init(repoUseCase: RepoUseCase){
        self.repoUseCase = repoUseCase
    }
    
    func loadData(){
        Task{
            await fetchData()
        }
    }
    
    
    func fetchData() async {
        
        do{
            repoData = try await repoUseCase.execute()
        }
        catch{
            err = error.localizedDescription
        }
    }
}

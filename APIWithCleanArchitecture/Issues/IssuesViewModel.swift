//
//  IssuesViewModel.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 24/03/26.
//

import Foundation

@MainActor
class IssuesViewModel: ObservableObject {
    
    @Published var issues: [DomainIssus] = []
    @Published var err: String?
    let useCase: IssuesUseCase
    init(useCase: IssuesUseCase){
        self.useCase = useCase
    }
    
    func loadData() {
        Task{
            await fetchData()
        }
    }
    
    func fetchData() async{
        do{
            issues = try await useCase.execute()
        }
        catch {
            err = error.localizedDescription
        }
    }
    
}

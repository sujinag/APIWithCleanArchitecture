//
//  MembersViewModel.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 20/03/26.
//

import Foundation


class MembersViewModel: ObservableObject{
    @Published var members: [DomainMembers] = []
    @Published var err: String?
    let useCase: MembersUseCase
    init(useCase: MembersUseCase)
    {
        self.useCase = useCase
    }
    
    func loadData()
    {
        Task{
            await fetchData()
        }
    }
    func fetchData() async
    {
        do{
            members = try await useCase.execute()
        }
        catch{
            err = error.localizedDescription
        }
    }
    
}

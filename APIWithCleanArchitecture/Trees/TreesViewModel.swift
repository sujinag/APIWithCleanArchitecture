//
//  TreesViewModel.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 28/04/26.
//

import Foundation

@MainActor
class TreesViewModel: ObservableObject {
    @Published var trees: [Trees] = []
    @Published var err: String?
    
    let useCase: TreesUseCase
    init(useCase: TreesUseCase)
    {
        self.useCase = useCase
    }
    
    func LoadData()
    {
//        Task
//        {
           // await fetchData()
        //}
    }
    
    func fetchData() async {
        do
        {
            trees = try await useCase.execute()
        }
        catch
        {
            err = error.localizedDescription
        }
    }
}

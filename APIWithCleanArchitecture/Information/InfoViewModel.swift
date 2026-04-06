//
//  InfoViewModel.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 23/03/26.
//

import Foundation


class InfoVIewModel: ObservableObject{
    @Published var stations:[Stations] = []
    @Published var err: String?
    let useCase: InfoUseCase
    init(useCase: InfoUseCase)
    {
        self.useCase = useCase
    }
    
    func loadData(){
        Task
        {
            await fetchData()
        }
    }
    
    func fetchData() async{
        do{
            stations = try await useCase.execute()
        }
        catch{
            err  = error.localizedDescription
        }
    }
}

//
//  DeathsView.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 13/04/26.
//

import SwiftUI

struct DeathsView: View {
    @StateObject var deathsViewModel : DeathsViewModel
    init(deathsViewModel: DeathsViewModel)
    {
        _deathsViewModel = StateObject(wrappedValue: deathsViewModel)
    }

    var body: some View {
        
        List{
            
            ForEach(deathsViewModel.deaths,id:\.episode){ items in
                Text(items.details)

            }
        }
        
        .task
        {
             deathsViewModel.loadData()
        }
        .refreshable
        {
            deathsViewModel.loadData()

        }
    }
}

struct DeathsView_Previews: PreviewProvider {
    static var previews: some View {
        //DeathsView()
        DeathsView(deathsViewModel: DeathsViewModel(useCase: DeathsUseCaseIMPL(repo: DeathsUserRepoIMPL(deathsInfra: DeathsInfra()))))

    }
}

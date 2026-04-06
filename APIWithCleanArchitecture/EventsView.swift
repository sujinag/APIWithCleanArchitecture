//
//  EventsView.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 18/03/26.
//

import SwiftUI

struct EventsView: View {
    @StateObject var RepoViewMode: RepoViewModel
    init(RepoViewMode: RepoViewModel) {
        _RepoViewMode = StateObject(wrappedValue: RepoViewMode)
    }

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
            .task{
                RepoViewMode.loadData()
            }
    }
}

struct EventsView_Previews: PreviewProvider {
    static var previews: some View {
        EventsView(RepoViewMode: RepoViewModel(repoUseCase:RepoUseCaseIMPL(repo: RepoUserIMPL(apiFromINfra: RepoInfra()))))
        //        TYPIPhotosView(TypiViewMOdel: TypiViewModel(useCase:TYPIUseCaseIMPL(repo:TypiUserRepoIMPL(api: TypiAPIManager()))))
    }
    
}

//
//  CommitsVIew.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 24/04/26.
//

import SwiftUI

struct CommitsVIew: View {
    @StateObject var commitsViewModel : CommitsViewModel
    init(commitsViewModel: CommitsViewModel)
    {
        _commitsViewModel = StateObject(wrappedValue: commitsViewModel)
    }

    var body: some View {
        
        List {
            ForEach(commitsViewModel.commits,id:\.id) { data in
                
                Text(data.sha)
                Text(data.url)

            }
        }
        
        .task
        {
            commitsViewModel.loadData()
        }
        .refreshable
        {
            commitsViewModel.loadData()
        }
    }
}

struct CommitsVIew_Previews: PreviewProvider {
    static var previews: some View {
      //  CommitsVIew()
        CommitsVIew(commitsViewModel: CommitsViewModel(useCase: CommitsUseCaseIMPL(repo: CommitsUserRepoIMPL(commitsINfra: CommitsInfra()))))

    }
}

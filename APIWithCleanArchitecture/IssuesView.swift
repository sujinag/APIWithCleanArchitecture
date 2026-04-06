//
//  IssuesView.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 24/03/26.
//

import SwiftUI

struct IssuesView: View {
    @StateObject var issuesViewMOdel: IssuesViewModel
    init(issuesViewMOdel: IssuesViewModel) {
        _issuesViewMOdel = StateObject(wrappedValue: issuesViewMOdel)
    }
    
    var body: some View
    {
        
                List{
                    ForEach(issuesViewMOdel.issues,id:\.id){ data in
                        HStack
                        {
                            Text(String(data.user.login))
                            Text(String(data.number))
                        }

                    }
                }
                .task
                {
                    issuesViewMOdel.loadData()
                }
            }

        
    }
    


struct IssuesView_Previews: PreviewProvider {
    static var previews: some View {
        //IssuesView()
        IssuesView(issuesViewMOdel: IssuesViewModel(useCase:IsseusUseCaseIMPL(repo: IssuesUserRepoIMPL(api: IssuesInfra()))))

    }
}


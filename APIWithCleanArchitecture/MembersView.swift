//
//  MembersView.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 20/03/26.
//

import SwiftUI

struct MembersView: View {
    @StateObject var membersViewMOdel: MembersViewModel
    init(membersViewMOdel: MembersViewModel) {
        _membersViewMOdel = StateObject(wrappedValue: membersViewMOdel)
    }
    var body: some View {
        List{
            ForEach(membersViewMOdel.members,id:\.id){ items in
                Text(items.login)

            }
        }
        .task{
            membersViewMOdel.loadData()
            
        }
        
    }
}

struct MembersView_Previews: PreviewProvider {
    static var previews: some View {
       // MembersView()
        MembersView(membersViewMOdel: MembersViewModel(useCase:MembersUseCaseIMPL(repo: MembersRepoIMPL(api: MembersAPI()))))

    }
}

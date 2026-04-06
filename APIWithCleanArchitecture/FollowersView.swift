//
//  FollowersView.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 26/03/26.
//

import SwiftUI

struct FollowersView: View {
    
    @StateObject var followersViewMOdel: FollowersViewModel
    init(followersViewMOdel: FollowersViewModel) {
        _followersViewMOdel = StateObject(wrappedValue: followersViewMOdel)
    }

    var body: some View {
        
        List
        {
            ForEach(followersViewMOdel.followers,id:\.id){ item in
                VStack {
                    Text(item.name)
                    Text("\(item.id)")
                    Text("Followers Edited")
                    
                    
                }
                .padding()


            }
        }
        .task{
             followersViewMOdel.loadData()
        }
    }
}

struct FollowersView_Previews: PreviewProvider {
    static var previews: some View {
      //  FollowersView()
        FollowersView(followersViewMOdel: FollowersViewModel(useCase: UseCaseFollowersIMPL(repo: UserRepoFollowersIMPL(api: FollowersApiManager()))))

    }
}

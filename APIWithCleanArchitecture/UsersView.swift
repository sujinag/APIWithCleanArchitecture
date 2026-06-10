//
//  UsersView.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 18/05/26.
//

import SwiftUI

struct UsersView: View {
    
    @State var txtName: String = ""
//    @StateObject var usersViewModel : UsersViewModel
//    init(usersViewModel: UsersViewModel){
//        _usersViewModel = StateObject(wrappedValue: usersViewModel)
//    }
    
    var body: some View {
        Text("ghgh")

        /*NavigationView {
            List{
                ForEach(usersViewModel.users,id:\.id){ response in
                    
                    NavigationLink {
                        HStack {
                            Text("\(response.id)")
                                .background(
                                    RoundedRectangle(cornerRadius: 12)
                                        .fill(Color(.gray))
                                )
                            
                            Text(response.name)
                                .padding()
                                .background(
                                    RoundedRectangle(cornerRadius: 12)
                                        .fill(Color(.gray))
                                )
                            
                            
                        } //HStack
                        
                    } label: {
                        VStack{
                            Text(response.username)
                        }
                    }
                    
                    
                } //Foreach
            } //List
        }*/ // Nav
        
        
//        .task {
//            await usersViewModel.loadImages()
//        }
//        .refreshable{
//            await usersViewModel.loadImages()
//
        }
    
}

struct UsersView_Previews: PreviewProvider {
    static var previews: some View {
        UsersView()
       // UsersView(usersViewModel: UsersViewModel(useCase: UseCaseIMPL(repo: UsersRepoIMPL(userInfra: UsersInfra()))))

    }
}

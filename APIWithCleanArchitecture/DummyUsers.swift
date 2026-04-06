//
//  DummyUsers.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 05/03/26.
//

import SwiftUI

struct DummyUsers: View {
    @StateObject var viewModel: DummyViewModel
    init(viewModel: DummyViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }

    var body: some View {
      //  ScrollView{
//            LazyVStack {
//                ForEach(viewModel.users,id: \.id){ dummy in
//                    Text("FirstName:\(dummy.firstName ?? "")")
//
//                }
//
//            }
        NavigationView {
            List{
                ForEach(viewModel.users,id: \.id){ dummy in
                    
                    NavigationLink{
                        VStack{
                            VStack {
                                Text("\(dummy.firstName ?? "")")
                                Text("\(dummy.lastName ?? "")")
                                Text("\(dummy.maidenName ?? "")")
                                Text("\(dummy.age ?? 0)")
                                Text("\(dummy.gender ?? "")")
                                Text("\(dummy.email ?? "")")
                                Text("\(dummy.phone ?? "")")
                                Text("\(dummy.hair.color ?? "")")

                                AsyncImage(url: URL(string: dummy.image ?? ""))

                                
                            }.padding()
                        }
                        
                    }label: {
                        
                        HStack {
                            Text("\(dummy.id ?? 0)")
                            Text("\(dummy.firstName ?? "")")
                            Spacer()
                            AsyncImage(url: URL(string: dummy.image ?? ""))
                               // .fixedSize()
                               // .scaledToFit()
                                .frame(width: 20, height: 20)
                        }
                        
                    }
                }
            } //List
        }
       // }
        .task {
             viewModel.fetchDummyData()
        }
    }
}

struct DummyUsers_Previews: PreviewProvider {
    static var previews: some View {
        DummyUsers(viewModel: DummyViewModel(usecase: DummyUseCaseIMPL(repo: DummyUserRepoIMPL())))
    }
}

//
//  ContentView.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 03/03/26.
//

import SwiftUI

struct ContentView: View {
    let fixedScreenBounds = UIScreen.main.fixedCoordinateSpace.bounds

    @StateObject var viewModel: ViewModel
    
    init(viewModel: ViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }

    private let adaptiveColumns = [GridItem(.adaptive(minimum: 170))]
    @State private var gridLayout: [GridItem] = [GridItem(.flexible())]

    var body: some View {
        ScrollView {
            LazyVGrid(columns: gridLayout,spacing: 4)
            {
                ForEach(viewModel.users,id: \.id) { data in
                    // List(viewModel.users,id: \.id) { data in
                    VStack {
                        
                        AsyncImage(url: URL(string: data.photo)){ image in
                            if let image = image.image
                            {
                                image
                                .resizable()
                                .scaledToFit() // Maintain original aspect ratio without cropping
                               // .scaleEffect(y: 1.2)
                               // .imageScale(.large)
            //                    .scaleEffect(x: 1.2)
                               // .shadow(color: .black, radius: 7)
                               // .offset(y: 0)
                                .frame(width: fixedScreenBounds.width/3)
                                .cornerRadius(20)

                            }
                            else if image.error != nil
                            {
                                ZStack{
                                    Color.black // Placeholder for error
                                    Text("Error in loading").foregroundColor(Color.white)
                                    
                                }
                                .cornerRadius(20)

                            }
                            else
                            {
                                ProgressView() // Loading indicator
                            }
                            
                        }
                        .frame(width: fixedScreenBounds.width / 2.15,height: 0.25 * fixedScreenBounds.height,alignment: .center)
                        .padding(.leading,2)
                        Text("Name: \(data.name)").foregroundColor(Color.purple)
                        Text("Company: \(data.company)").foregroundColor(Color.red)
                        Text("UserName: \(data.username)").foregroundColor(Color.orange)
                        Text("Email: \(data.email)").foregroundColor(Color.green)
                        Text("Address: \(data.address)").foregroundColor(Color.pink)
                        Text("Zip: \(data.zip)").foregroundColor(Color.gray)
                        Text("State: \(data.state)").foregroundColor(Color.yellow)
                        Text("Country: \(data.country)").foregroundColor(Color.blue)
                        Text("Phone: \(data.phone)").foregroundColor(Color.brown)
                        
                        
                        
                    }
                    .padding()
                } //List
            }
        }
        //.padding()
        .task {
            viewModel.fetchImages()
        }
        .refreshable {
            viewModel.fetchImages()

        }
        .onAppear{
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: ViewModel(usecase: UserCaseImpl(repo: UserRepository())))
    }
}

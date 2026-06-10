//
//  ProdViewModel.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 21/05/26.
//

import SwiftUI

struct ProdView: View {
    @StateObject var prodsViewModel : ProductsViewModel
    init(prodsViewModel: ProductsViewModel){
        _prodsViewModel = StateObject(wrappedValue: prodsViewModel)
    }

    var body: some View {
        
        NavigationStack{
            List{
                ForEach(prodsViewModel.products,id:\.id){ prods in
                    
                    NavigationLink{
                        VStack(spacing: 10) {
                            AsyncImage(url: URL(string: prods.image)) { image in
                                image
                                    .resizable()
                                    .scaledToFit()
                            } placeholder: {
                                ProgressView() // Shows a spinner while loading
                            }
                            .frame(width: 200, height: 200)
                            

                            HStack {
                                RatingView(rating: prods.rating.rate)

                                Text("Price:\(prods.price)")
//                                    .padding()
//                                    .background(
//                                        RoundedRectangle(cornerRadius: 12)
//                                            .fill(Color(.clear))
//                                )
                                Text("\(prods.rating.count)")
                                    .padding()
                                    .background(
                                        RoundedRectangle(cornerRadius:12)
                                            .fill(Color(.clear))
                                    )

                            }
                            Text("Product Description:")
//                                .padding(.trailing,30)
                                .font(.headline)
                                .foregroundColor(Color.red)
//                                .background(
//                                    RoundedRectangle(cornerRadius:12)
//                                        .fill(Color(.clear))
//                                )
                            Text((prods.description))
                                .padding()
                                .background(
                                    RoundedRectangle(cornerRadius: 12)
                                        .fill(Color(.clear))
                                )
                            

                        }.padding()
                        


                        
                    } label:{
                        
                        Text(prods.title)
                            .padding()
//                            .background(
//                                RoundedRectangle(cornerRadius: 12)
//                                    .fill(Color(.gray))
//                            )

                    }
                }
                
            } //List
        }// Nav
        .task{
            await prodsViewModel.loadProducts()
        }
        .refreshable{
            await prodsViewModel.loadProducts()

        }
    }
}

struct ProdView_Previews: PreviewProvider {
    static var previews: some View {
       // ProdViewModel()
        ProdView(prodsViewModel: ProductsViewModel(useCase: ProdUseCaseIMPL(repo: ProdUserRepoIMPL(infra: ProdInfra()))))

        
    }
}

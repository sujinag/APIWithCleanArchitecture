//
//  Task.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 07/05/26.
//

import SwiftUI

struct Task: View {
    @State var name : String = ""
    @State var age: Int = 0
    var body: some View {
        GeometryReader {geo in
            let Swidth = geo.size.width
            let Sheight = geo.size.height
            VStack(spacing:Swidth * 0.12){
                
                Text(name).padding()
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(Color(.gray))
                    )
                Text("\(age)").padding()
                    .background(
                        RoundedRectangle(cornerRadius:12)
                            .fill(Color(.gray))
                    )
                
            }
            .padding()
            
            
        }
        
    }
}

struct Task_Previews: PreviewProvider {
    static var previews: some View {
        Task()
    }
}

//
//  RatingView.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 25/05/26.
//

import SwiftUI

struct RatingView: View {

    let rating: Double

    var body: some View {

        HStack(spacing: 4) {

            ForEach(1...5, id: \.self) { index in

                let starValue = Double(index)

                if rating >= starValue {

                    Image(systemName: "star.fill")

                } else if rating >= starValue - 0.5 {

                    Image(systemName: "star.leadinghalf.filled")

                } else {

                    Image(systemName: "star")
                }
            }

            Text(String(format: "%.1f", rating))
                .font(.caption)
        }
        .foregroundColor(.yellow)
    }
}
//struct RatingView: View {
//
//    let rating: Double
//
//    var body: some View {
//
//        HStack(spacing: 4) {
//
//            ForEach(1...5, id: \.self) { index in
//
//                Image(systemName:
//                    index <= Int(rating.rounded())
//                    ? "star.fill"
//                    : "star"
//                )
//                .foregroundColor(.yellow)
//            }
//
//            Text(String(format: "%.1f", rating))
//                .font(.caption)
//        }
//    }
//}

//struct RatingView_Previews: PreviewProvider {
//    static var previews: some View {
//        RatingView()
//    }
//}

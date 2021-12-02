//
//  ReviewCard.swift
//  Rotten games
//
//  Created by AMStudent on 11/12/21.
//

import SwiftUI
import Kingfisher

struct ReviewCard: View {
    let reviewData: ReviewData
    let rottenViewModel: RottenViewModel
    let backgroundColor: Color


init(ReviewData: ReviewData, rottenViewModel: RottenViewModel) {
    self.reviewData = ReviewData
    self.rottenViewModel = rottenViewModel
    self.backgroundColor = Color(rottenViewModel.detectBackgroundColor(forDevs: ReviewData.devs))
}

var body: some View {
    ZStack{
        VStack(alignment: .leading){
            Text(reviewData.id.uppercased())
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            HStack {
// Look at TomDex for design
                Text (reviewData.devs.uppercased())
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.horizontal, 10)
                    .padding(.vertical)
                
                    .overlay(RoundedRectangle(cornerRadius: 12)
                                .fill(Color.white.opacity(0.025))
                )
                
                
                KFImage(URL(string: reviewData.devImageURL))
                    .resizable()
                    .scaledToFit()
                    .frame(width: 68, height: 68)
                    .padding([.bottom, .trailing], 5)
                

            }
        }
    }
    .frame(width: 300.0)
    .background(backgroundColor)
    .cornerRadius(12)
    .shadow(color: .black, radius: 8, x: 0, y: 0)
}
}

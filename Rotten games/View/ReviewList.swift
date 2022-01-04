//
//  ContentView.swift
//  Rotten games
//
//  Created by AMStudent on 11/12/21.
//

import SwiftUI

struct ReviewListView: View {
    
// Provides main view and navigation to game review
    
    private let gridItems = [GridItem()]
    @ObservedObject var viewModel = RottenViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: gridItems, spacing: 20) {
                    ForEach(viewModel.review) { review in
                        NavigationLink(destination: RottenDetails(ReviewData: review, RottenViewModel: viewModel)) {
                            
                            ReviewCard(ReviewData: review, rottenViewModel: viewModel)
                        }
                    }
                }
            }
            .navigationTitle("RottenGames")
        }
    }
}

struct ReviewListView_Previews: PreviewProvider {
    static var previews: some View {
        ReviewListView()
    }
}

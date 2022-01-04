//
//  ReviewData.swift
//  Rotten games
//
//  Created by AMStudent on 11/12/21.
//

import Foundation

// sorts the data

struct ReviewData: Decodable, Identifiable {
    let id: String
    let description: String
    let devs: String
    let GameSpot: Float
    let IGN: Float
    let Metacritic: Float
    let PCGamer: Float
    let devImageURL: String
    let gameImageURL: String
}

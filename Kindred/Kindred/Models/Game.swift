//
//  Game.swift
//  Kindred
//
//  Created by Marcelo Laprea on 9/17/18.
//  Copyright © 2018 Marcelo. All rights reserved.
//

import Foundation

class Game {
    var gameId: String?
    var gameName: String?
    var imageUrl: String?
    
    init(gameId: String?, gameName: String?, imageUrl: String?) {
        self.gameId = gameId
        self.gameName = gameName
        self.imageUrl = imageUrl
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        gameId = try container.decode(String.self, forKey: .gameId)
        gameName = try container.decode(String.self, forKey: .gameName)
        imageUrl = try container.decode(String.self, forKey: .imageUrl)
    }
}

extension Game: Codable {
    
    private enum CodingKeys: String, CodingKey {
        case gameId
        case gameName
        case imageUrl
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try container.encode(gameId, forKey: .gameId)
        try container.encode(gameName, forKey: .gameName)
        try container.encode(imageUrl, forKey: .imageUrl)
    }
    
}

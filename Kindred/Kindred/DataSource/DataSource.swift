//
//  DataSource.swift
//  Kindred
//
//  Created by Marcelo Laprea on 9/17/18.
//  Copyright © 2018 Marcelo. All rights reserved.
//

import Foundation


class DataSource {
    
    let urlString = URL(string: "https://api.unibet.com/game-library-rest-api/getGamesByMarketAndDevice.json?jurisdiction=UK&brand=unibet&deviceGroup=mobilephone&locale=en_GB&currency=GBP&categories=casino,softgames&clientId=casinoapp")
    
    func getGames(completion: @escaping ([Game]) ->()) {
        
    }
    
    func getFakeGames(completion: @escaping ([Game]) ->()) {
        var games: [Game] = []
        let game1 = Game(gameId: "1", gameName: "Angry Bird", imageUrl: "https://d21tktytfo9riy.cloudfront.net/wp-content/uploads/2016/03/30123842/abcom-default-share.jpg")
        let game2 = Game(gameId: "2", gameName: "Fifa 18", imageUrl: "https://i.blogs.es/83a468/fifa18/450_1000.jpg")
        let game3 = Game(gameId: "3", gameName: "Uncharted 2", imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxcFxKAuaoLTQz_KxPkF5-VFrR5HI5hNrXApFNXl8179_JKNwaXw")
        
        games = [game1, game2, game3]
        completion(games)
    }
    
}

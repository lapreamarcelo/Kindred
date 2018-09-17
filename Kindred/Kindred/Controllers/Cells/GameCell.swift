//
//  GameCell.swift
//  Kindred
//
//  Created by Marcelo Laprea on 9/17/18.
//  Copyright © 2018 Marcelo. All rights reserved.
//

import UIKit

class GameCell: UITableViewCell {
    
    @IBOutlet weak var gameImage: UIImageView!
    @IBOutlet weak var gameLabel: UILabel!
    
    func setup(game: Game) {
        gameImage.layer.cornerRadius = 10
        gameLabel.layer.shadowOpacity = 0.8
        gameLabel.layer.shadowColor = UIColor.darkGray.cgColor
        
        gameLabel.text = game.gameName
        setupImage(gameImageURL: game.imageUrl)
    }
    
    private func setupImage(gameImageURL: String?) {
        guard let imageURL = gameImageURL else {
            return
        }
        
        print(imageURL)
    }
    
}

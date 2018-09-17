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
        selectionStyle = .none
        
        gameImage.layer.cornerRadius = 10
        gameLabel.layer.shadowOpacity = 0.9
        gameLabel.layer.shadowColor = UIColor.darkGray.cgColor
        
        gameLabel.text = game.gameName
        setupImage(gameImageURL: game.imageUrl)
    }
    
    private func setupImage(gameImageURL: String?) {
        guard let gameImageURL = gameImageURL, let imageURL = URL(string: gameImageURL) else {
            return
        }
        
        DispatchQueue.global().async {
            
            guard let data = try? Data(contentsOf: imageURL) else {
                return
            }
            
            DispatchQueue.main.async {
                self.gameImage.image = UIImage(data: data)
            }
        }
        
    }
    
}

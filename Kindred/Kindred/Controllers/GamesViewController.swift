//
//  GamesViewController
//  Kindred
//
//  Created by Marcelo Laprea on 9/17/18.
//  Copyright © 2018 Marcelo. All rights reserved.
//

import UIKit

class GamesViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let cellIdentifier = "GameCell"
    var games: [Game] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }
    
    private func setup() {
        setupTable()
        fetchGames()
    }
    
    private func setupTable() {
        tableView.register(UINib(nibName: "GameCell", bundle: nil), forCellReuseIdentifier: cellIdentifier)
    }
    
    private func fetchGames() {
        DataSource().getGames { (games) in
            self.games = games
            self.tableView.reloadData()
        }
    }

}

extension GamesViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return games.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as? GameCell else {
            return UITableViewCell()
        }
        
        let game = games[indexPath.row]
        
        cell.setup(game: game)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 170.0
    }
}


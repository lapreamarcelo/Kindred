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
        
        cell.setup()
        
        return cell
    }
    
}


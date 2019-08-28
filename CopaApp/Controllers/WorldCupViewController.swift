//
//  WorldCupViewController.swift
//  CopaApp
//
//  Created by Max Mendes on 25/08/19.
//  Copyright © 2019 Max Mendes. All rights reserved.
//

import UIKit

class WorldCupViewController: UIViewController {

    var worldCup: WorldCup!
    @IBOutlet weak var ivHome: UIImageView!
    @IBOutlet weak var lblHome: UILabel!
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var ivVice: UIImageView!
    @IBOutlet weak var lblVice: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "World Cup \(worldCup.year)"
        ivHome.image = UIImage(named: worldCup.winner)
        ivVice.image = UIImage(named: worldCup.vice)
        score.text = "\(worldCup.winnerScore) x \(worldCup.viceScore)"
        lblHome.text = worldCup.winner
        lblVice.text = worldCup.vice
        

        // Do any additional setup after loading the view.
        print("\(worldCup.year)")
    }
    
}


extension WorldCupViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
       
        let match = worldCup.matches[section]
        
        return match.stage
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return worldCup.matches.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let games = worldCup.matches[section].games
        return games.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let match = worldCup.matches[indexPath.section]
        let game = match.games[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! GameTableViewCell
        
        cell.prepare(with: game)
        
        return cell
    }
    
    
}

extension WorldCupViewController: UITableViewDelegate{
    
}

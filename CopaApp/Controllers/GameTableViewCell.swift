//
//  GameTableViewCell.swift
//  CopaApp
//
//  Created by Max Mendes on 27/08/19.
//  Copyright © 2019 Max Mendes. All rights reserved.
//

import UIKit

class GameTableViewCell: UITableViewCell {

    @IBOutlet weak var ivHome: UIImageView!
    @IBOutlet weak var ivVisitor: UIImageView!
    @IBOutlet weak var lblHome: UILabel!
    @IBOutlet weak var lblVisitor: UILabel!
    @IBOutlet weak var score: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state

    }
    
    func prepare(with game: Game){
        ivHome.image = UIImage(named: game.home)
        ivVisitor.image = UIImage(named: game.away)
        lblHome.text = game.home
        lblVisitor.text = game.away
        score.text = game.score
    }
    
    

}

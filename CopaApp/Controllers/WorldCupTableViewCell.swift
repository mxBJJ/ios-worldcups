//
//  WorldCupTableViewCell.swift
//  CopaApp
//
//  Created by Max Mendes on 26/08/19.
//  Copyright © 2019 Max Mendes. All rights reserved.
//

import UIKit

class WorldCupTableViewCell: UITableViewCell {

    
    @IBOutlet weak var lblCountry: UILabel!
    @IBOutlet weak var lblYear: UILabel!
    @IBOutlet weak var winnerName: UILabel!
    @IBOutlet weak var winnerFlag: UIImageView!
    @IBOutlet weak var viceName: UILabel!
    @IBOutlet weak var viceFlag: UIImageView!
    @IBOutlet weak var viceScore: UILabel!
    
    @IBOutlet weak var winnerScore: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func prepare(with cup: WorldCup){
        
        lblYear.text = "\(cup.year)"
        lblCountry.text = cup.country
        winnerFlag.image = UIImage(named: cup.winner)
        viceFlag.image = UIImage(named: cup.vice)
        winnerName.text = cup.winner
        viceName.text = cup.vice
        winnerScore.text = cup.winnerScore
        viceScore.text = cup.viceScore

    }

}

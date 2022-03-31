//
//  TeamTableViewCell.swift
//  WordCup
//
//  Created by administrator on 3/31/22.
//

import UIKit

class TeamTableViewCell: UITableViewCell {

    
    @IBOutlet weak var imgHome: UIImageView!
    @IBOutlet weak var imgVisit: UIImageView!
    
    
    @IBOutlet weak var lblHome: UILabel!
    @IBOutlet weak var lblVisit: UILabel!
    @IBOutlet weak var lblResult: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setTeamDataControls(with game: Game) {
        imgHome.image = UIImage(named: "\(game.home).png")
        imgVisit.image = UIImage(named: "\(game.away).png")
        
        lblHome.text = game.home
        lblVisit.text = game.away
        lblResult.text = game.score
    }

}

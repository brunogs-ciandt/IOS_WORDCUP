//
//  WordCupTableViewCell.swift
//  WordCup
//
//  Created by administrator on 3/31/22.
//

import UIKit

class WordCupTableViewCell: UITableViewCell {

    @IBOutlet weak var lblYear: UILabel!
    @IBOutlet weak var lblCountry: UILabel!
    
    
    @IBOutlet weak var imgWinner: UIImageView!
    @IBOutlet weak var lblWinner: UILabel!
    @IBOutlet weak var lblWinnerScore: UILabel!
    
    
    @IBOutlet weak var imgVice: UIImageView!
    @IBOutlet weak var lblVice: UILabel!
    @IBOutlet weak var lblViceScore: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setWordCupValue(with cup:WordCup){
        lblYear.text = "\(cup.year)"
        lblCountry.text = "\(cup.country)"
        lblWinner.text = "\(cup.winner)"
        lblWinnerScore.text = "\(cup.winnerScore)"
        lblVice.text = "\(cup.vice)"
        lblViceScore.text = "\(cup.viceScore)"
        
        imgWinner.image = UIImage(named: "\(cup.winner).png")
        imgVice.image = UIImage(named: "\(cup.vice).png")
    }

}

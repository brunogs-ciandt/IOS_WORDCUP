//
//  TeamViewController.swift
//  WordCup
//
//  Created by administrator on 3/31/22.
//

import UIKit

class TeamViewController: UIViewController {

    @IBOutlet weak var imgWinner: UIImageView!
    @IBOutlet weak var imgVice: UIImageView!
    
    @IBOutlet weak var lblResult: UILabel!
    @IBOutlet weak var lblWinner: UILabel!
    @IBOutlet weak var lblVice: UILabel!
    
    @IBOutlet weak var tableViewJogos: UITableView!
    
    var wordCup: WordCup!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //tableViewJogos.dataSource = wordCup.matches
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        title = "Wordcup \(wordCup.year)"
        imgWinner.image = UIImage(named: wordCup.winner)
        imgVice.image = UIImage(named: wordCup.vice)
        
        lblVice.text = wordCup.vice
        lblWinner.text = wordCup.winner
        lblResult.text = "\(wordCup.winnerScore) X \(wordCup.viceScore)"
    }
}

extension TeamViewController : UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        wordCup.matches.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let jogos = wordCup.matches[section].games
        return jogos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "jogosCell", for: indexPath) as! TeamTableViewCell
        
        let game = wordCup.matches[indexPath.section].games[indexPath.row]
        cell.setTeamDataControls(with: game)
        return cell
    }
    
      
}

extension TeamViewController : UITableViewDelegate {
    
    
}

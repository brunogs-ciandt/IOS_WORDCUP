//
//  WordCupTableViewController.swift
//  WordCup
//
//  Created by administrator on 3/31/22.
//

import UIKit
import Foundation

class WordCupTableViewController: UITableViewController {

    var wordCups: [WordCup] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadWordCups()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return wordCups.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "wordCupCell", for: indexPath) as! WordCupTableViewCell
        
        let wordCup = wordCups[indexPath.row]
        cell.setWordCupValue(with: wordCup)
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-ordera
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let teamSegue = segue.destination as! TeamViewController
        let rowSelected = tableView.indexPathForSelectedRow!.row
        
        teamSegue.wordCup = wordCups[rowSelected]
    }
    
    
    func loadWordCups() {
        let fileUrl = Bundle.main.url(forResource: "winners", withExtension: "json")!
        let jsonData = try! Data(contentsOf: fileUrl)
        let jsonDecoder = JSONDecoder()
        wordCups = try! jsonDecoder.decode([WordCup].self, from: jsonData)
    }

}

//
//  NavTableViewController.swift
//  UI Testing
//
//  Created by Paul on 11/7/17.
//  Copyright © 2017 Paul. All rights reserved.
//

import UIKit

class NavTableViewController: UITableViewController {
    let cellStrings = ["Profile", "Leaderboard", "Quiz", "Leaderboard", "Quiz", "Leaderboard", "Quiz", "Leaderboard", "Quiz", "Leaderboard", "Quiz", "Leaderboard", "Quiz", "Leaderboard", "Quiz", "Leaderboard", "Quiz", "Leaderboard", "Quiz", "Leaderboard", "Quiz", "Leaderboard", "Quiz", "Leaderboard", "Quiz", "Leaderboard", "Quiz", "Leaderboard", "Quiz", "Leaderboard", "Quiz", "Leaderboard", "Quiz", "Leaderboard", "Quiz", "Leaderboard", "Quiz", "Leaderboard", "Quiz", "Leaderboard", "Quiz", "Leaderboard", "Quiz", "Leaderboard", "Quiz", "Leaderboard", "Quiz", "Leaderboard", "Quiz", "Leaderboard", "Quiz", "Leaderboard", "Quiz"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return section == 0 ? 1 : cellStrings.count
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if(indexPath.section == 0){
            return 200.0
        }
        else{
            return tableView.rowHeight
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var toReturn:UITableViewCell
        if(indexPath.section == 0){
            let cell = tableView.dequeueReusableCell(withIdentifier: "NavProfileTableViewCell", for: indexPath) as! NavProfileTableViewCell
            
            
            toReturn = cell
        }
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "NavTableViewCell", for: indexPath) as! NavTableViewCell
            cell.lab_navCellTitle.text = cellStrings[indexPath.row]
            toReturn = cell
        }
        
    
        // Configure the cell...
        
        return toReturn
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

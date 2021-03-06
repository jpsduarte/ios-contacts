//
//  ContactsTableViewController.swift
//  ios-contacts
//
//  Created by Joao Duarte on 04/05/20.
//  Copyright © 2020 Joao Duarte. All rights reserved.
//

import UIKit

class ContactsTableViewController: UITableViewController {

    let repositories:[[String]] = [
        ["Elon Musk",       "+1-201-3141-5926"],
        ["Bill Gates",      "+1-202-5358-9793"],
        ["Tim Cook",        "+1-203-2384-6264"],
        ["Richard Branson", "+1-204-3383-2795"],
        ["Jeff Bezos",      "+1-205-0288-4197"],
        ["Warren Buffet",   "+1-206-1693-9937"],
        ["The Zuck",        "+1-207-5105-8209"],
        ["Carlos Slim",     "+1-208-7494-4592"],
        ["Bill Gates",      "+1-209-3078-1640"],
        ["Larry Page",      "+1-210-6286-2089"],
        ["Harold Finch",    "+1-211-9862-8034"],
        ["Sergey Brin",     "+1-212-8253-4211"],
        ["Jack Ma",         "+1-213-7067-9821"],
        ["Steve Ballmer",   "+1-214-4808-6513"],
        ["Phil Knight",     "+1-215-2823-0664"],
        ["Paul Allen",      "+1-216-7093-8446"],
        ["Woz",             "+1-217-0955-0582"]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return repositories.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: ContactTableViewCell.CellID, for: indexPath) as! ContactTableViewCell
        
        let repo = repositories[indexPath.row]
        
        cell.lblTitle.text = repo[0];
        cell.lblDescription.text = repo[1]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 81
    }
    
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

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
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

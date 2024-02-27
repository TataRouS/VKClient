//
//  FavoriteGroupTableViewController.swift
//  VK
//
//  Created by Nata Kuznetsova on 02.12.2023.
//


import UIKit

class FavoriteGroupTableViewController: UITableViewController {

    @IBAction func addSelectedGroup(segue: UIStoryboardSegue){

        if let sourceVC = segue.source as? GroupTableViewController,
           let index = sourceVC.tableView.indexPathForSelectedRow {
            let group = sourceVC.groups[index.row]
           
            if !groups.contains(where: {$0.name == group.name}) {
                groups.append(group)
                tableView.reloadData()
        }
    }
    }
    
    var groups = [
    
        Group(image: UIImage(named: "garden"), name: "Сад с нуля"),
        Group(image: UIImage(named: "cinema"), name: "Фильмы онлайн"),
        Group(image: UIImage(named: "english"), name: "English для детей")
        
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
        return groups.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "GroupCell", for: indexPath) as? GroupCell else {
            preconditionFailure("Error cell")
        }

        // Configure the cell...
        
//        print(indexPath.section)
//        print(indexPath.row)

        cell.groupNameLabel.text = groups[indexPath.row].name
        cell.groupImageView.image = groups[indexPath.row].image
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            groups.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    

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

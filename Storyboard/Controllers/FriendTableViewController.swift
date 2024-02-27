//
//  FriendTableViewController.swift
//  VK
//
//  Created by Nata Kuznetsova on 02.12.2023.
//

import UIKit

class FriendTableViewController: UITableViewController {
    
    var users = [
        
        User(image: UIImage(named: "dicaprio"),name: "Ди Каприо Леонардо", photos: [UIImage(named: "dicaprio1")!, UIImage(named: "dicaprio2")!, UIImage(named: "dicaprio3")!]),
        
        User(image: UIImage(named: "depp"), name: "Депп Джонни", photos: [UIImage(named: "depp1")!, UIImage(named: "depp2")!, UIImage(named: "depp3")!]),
        
        User(image: UIImage(named: "lawrence"), name: "Лоуренс Дженифер", photos: [UIImage(named: "lawrence1")!, UIImage(named: "lawrence2")!, UIImage(named: "lawrence3")!]),
        
        User(image: UIImage(named: "aniston"), name: "Энистон Дженифер", photos: [UIImage(named: "aniston1")!, UIImage(named: "aniston2")!, UIImage(named: "aniston3")!]),
        
        User(image: UIImage(named: "klark"), name: "Кларк Эмилия", photos: [UIImage(named: "klark1")!, UIImage(named: "klark2")!, UIImage(named: "klark3")!, UIImage(named: "klark4")!, UIImage(named: "klark5")!]),
        
        User(image: UIImage(named: "alba"), name: "Альба Джессика", photos: [UIImage(named: "alba1")!, UIImage(named: "alba2")!, UIImage(named: "alba3")!]),
        
        User(image: UIImage(named: "willis"), name: "Уиллис Брюс", photos: [UIImage(named: "willis1")!, UIImage(named: "willis2")!, UIImage(named: "willis3")!]),
        
        User(image: UIImage(named: "cruise"), name: "Круз Том", photos: [UIImage(named: "cruise1")!, UIImage(named: "cruise2")!, UIImage(named: "cruise3")!])
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
        return users.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "UserCell", for: indexPath) as? UserCell else {
            preconditionFailure("Error cell")
        }
        
        
        cell.userNameLabel.text = users[indexPath.row].name
        cell.userImageView.image = users[indexPath.row].image
        
        print(indexPath.section)
        print(indexPath.row)
        
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

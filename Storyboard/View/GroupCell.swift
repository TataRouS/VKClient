//
//  GroupCell.swift
//  VK
//
//  Created by Nata Kuznetsova on 03.12.2023.
//

import UIKit

class GroupCell: UITableViewCell {

    
    @IBOutlet weak var groupImageView: UIImageView!
    @IBOutlet weak var groupNameLabel: UILabel!
    
    
    @IBOutlet weak var groupImageView2: UIImageView!
    @IBOutlet weak var groupNameLabel2: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

//
//  User.swift
//  VK
//
//  Created by Nata Kuznetsova on 01.12.2023.
//

import Foundation
import UIKit

class User {
    let image: UIImage?
    let name: String
    var photos: [UIImage] = []
    
    init(image: UIImage? = nil, name: String) {
        self.image = image
        self.name = name
    }
    
    init(image: UIImage? = nil, name: String, photos: [UIImage]) {
        self.image = image
        self.name = name
        self.photos = photos
    }
    
}

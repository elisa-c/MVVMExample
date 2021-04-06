//
//  PersonFollowingTableViewCellViewModel.swift
//  MVVMExample
//
//  Created by Elisa Camillo on 05/04/21.
//

import Foundation
import UIKit

struct PersonFollowingTableViewCellViewModel {
    let name: String
    let username: String
    let currentlyFollowing: Bool
    let image: UIImage?
    
    init(with model: Person) {
        name = model.name
        username = model.username
        currentlyFollowing = false
        image = UIImage(systemName: "person")
        
    }
}

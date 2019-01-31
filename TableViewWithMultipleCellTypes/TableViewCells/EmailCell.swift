//
//  EmailCell.swift
//  TableViewWithMultipleCellTypes
//
//  Created by Shushan Khachatryan on 1/30/19.
//  Copyright © 2019 Shushan Khachatryan. All rights reserved.
//

import UIKit

class EmailCell: UITableViewCell {

    @IBOutlet weak var emailLabel: UILabel!
    
    var item: ProfileViewModelItem? {
        didSet {
            guard let item = item as? ProfileViewModelEmailItem
                else { return }
            emailLabel?.text = item.email
        }
    }

    static var nib:UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    static var identifier: String {
        return String(describing: self)
    }

}

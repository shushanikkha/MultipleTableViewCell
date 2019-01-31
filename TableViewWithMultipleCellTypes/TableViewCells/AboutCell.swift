//
//  AboutCell.swift
//  TableViewWithMultipleCellTypes
//
//  Created by Shushan Khachatryan on 1/30/19.
//  Copyright © 2019 Shushan Khachatryan. All rights reserved.
//

import UIKit

class AboutCell: UITableViewCell {

    @IBOutlet weak var aboutLabel: UILabel!
    
    var item: ProfileViewModelItem? {
        didSet {
            guard let item = item as? ProfileViewModelAboutItem
                else { return }
            aboutLabel?.text = item.about
        }
    }
    static var nib:UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    static var identifier: String {
        return String(describing: self)
    }

}

//
//  AttributeCell.swift
//  TableViewWithMultipleCellTypes
//
//  Created by Shushan Khachatryan on 1/30/19.
//  Copyright © 2019 Shushan Khachatryan. All rights reserved.
//

import UIKit

class AttributeCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    
    var item: Attribute? {
        didSet {
            textLabel?.text = item?.key
            valueLabel?.text = item?.value
        }
    }
    static var nib:UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    static var identifier: String {
        return String(describing: self)
    }

}

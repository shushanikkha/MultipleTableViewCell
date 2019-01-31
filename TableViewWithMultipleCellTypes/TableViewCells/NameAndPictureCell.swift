//
// NameAndPictureCell.swift
//  TableViewWithMultipleCellTypes
//
//  Created by Shushan Khachatryan on 1/30/19.
//  Copyright © 2019 Shushan Khachatryan. All rights reserved.
//

import UIKit

class NameAndPictureCell: UITableViewCell {
    
    @IBOutlet weak var pictureImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    var item: ProfileViewModelItem? {
        didSet {
            guard let item = item as? ProfileViewModelNameAndPictureItem
                else { return }
        nameLabel?.text = item.userName
        pictureImageView?.image = UIImage(named: item.pictureUrl)
    }
    }
    static var nib:UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    static var identifier: String {
        return String(describing: self)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        pictureImageView?.layer.cornerRadius = pictureImageView.frame.width / 2
        pictureImageView?.clipsToBounds = true
        pictureImageView?.contentMode = .scaleAspectFit
        pictureImageView?.backgroundColor = UIColor.lightGray
    }
    override func prepareForReuse() {
        super.prepareForReuse()
        
        pictureImageView?.image = nil
    }
}

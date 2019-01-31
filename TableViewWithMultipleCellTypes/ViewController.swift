//
//  ViewController.swift
//  TableViewWithMultipleCellTypes
//
//  Created by Shushan Khachatryan on 1/29/19.
//  Copyright © 2019 Shushan Khachatryan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    fileprivate let viewModel = ProfileViewModel()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView?.dataSource = viewModel
        
        
        tableView?.estimatedRowHeight = 100
        tableView?.rowHeight = UITableView.automaticDimension
        
        tableView?.register(AboutCell.nib, forCellReuseIdentifier: AboutCell.identifier)
        tableView?.register(NameAndPictureCell.nib, forCellReuseIdentifier: NameAndPictureCell.identifier)
        tableView?.register(FriendCell.nib, forCellReuseIdentifier: FriendCell.identifier)
        tableView?.register(AttributeCell.nib, forCellReuseIdentifier: AttributeCell.identifier)
        tableView?.register(EmailCell.nib, forCellReuseIdentifier: EmailCell.identifier)
    }


}


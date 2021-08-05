//
//  TableViewCell.swift
//  GoTopDemo
//
//  Created by Peggy Tsai on 2021/8/5.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var itemLabel: UILabel!
    
    var data: Int? = nil {
        didSet{
            if let data = data {
                itemLabel.text = "\(data)"
            }
        }
    }
}

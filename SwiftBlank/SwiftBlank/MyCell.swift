//
//  MyCell.swift
//  SwiftBlank
//
//  Created by apple on 16/1/20.
//  Copyright © 2016年 www.ixx.com. All rights reserved.
//

import UIKit

class MyCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    // 定义模型
    var person: Person? {
        didSet{
            self.textLabel?.text = "\(person!.name!)"
            self.detailTextLabel?.text = "\(person!.age!)"
        }
    }

}

//
//  TableVC1.swift
//  SwiftBlank
//
//  Created by apple on 16/1/19.
//  Copyright © 2016年 www.ixx.com. All rights reserved.
//

import UIKit

class TableVC1: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // 注册可重用单元格
        // 需要注意的, 原来 OC 中使用 [xxx class] => xxx.self
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }
    
    // MARK: - Table view data source
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        // 1.查询一个可重用的 cell
        // 注意: OC 中很多类方法返回类型 instancetype -> id, 这种方法在 swift 中绝大多数返回的都是 AnyObject
        // 需要程序员自己主动用 as 指定具体的类型, 至于 ? 还是 !, 根据 Xcode的只能提示
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell")
        
        // 2. cell的内容
        cell!.textLabel!.text = "hello + \(indexPath.row)"
        
        return cell!
    }

}

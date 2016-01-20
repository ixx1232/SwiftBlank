//
//  TableVC2.swift
//  SwiftBlank
//
//  Created by apple on 16/1/20.
//  Copyright © 2016年 www.ixx.com. All rights reserved.
//

import UIKit
/**
 
 在 UIViewController 上添加一个 UITableView
 
 在 Swift 中要遵守协议, 可以直接用 ","写协议名称  即可, 这种格式和 C++ 中的多继承非常类似
 
 面试题:
    OC中又多继承? -> 没有
    如果没有用什么实现? -> 代理
 
 1> 在 OC 中, 无论是指定代理或者遵守协议, 一旦遗漏, 只是出现一个警告
 2> 在 swift 中, 一个都不能少, 少了就不能跑!!
 
*/

class TableVC2: UIViewController, UITableViewDataSource {

    /// 表格视图
    var tableView: UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 实例化表格视图, 添加到 self.view
        tableView = UITableView(frame: self.view.bounds, style: UITableViewStyle.Plain)
        
        // 之所以要使用 ! 是因为定义时, 对象可以为空
        // 而 addSubView 函数不能接nil, 必须要有值
        self.view.addSubview(tableView!)
        
        // 指定表格的数据源方法, 此时必须要遵守协议
        tableView?.dataSource = self
    }
    
    // MARK: - 数据源方法
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCellWithIdentifier("Cell")
        
        // 如果 cell 不存在, 创建一个 cell
        if cell == nil {
            // 实例化一个 cell
            cell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Cell")
        }
        
        // 设置内容
        cell!.textLabel?.text = "Hello \(indexPath.row)"
        
        return cell!
    }

    

}

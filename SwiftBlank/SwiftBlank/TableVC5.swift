//
//  TableVC5.swift
//  SwiftBlank
//
//  Created by apple on 16/1/20.
//  Copyright © 2016年 www.ixx.com. All rights reserved.
//

import UIKit

class TableVC5: UIViewController {
    
    /// 表格视图 - 属性, 变量
    /// lazy 关键字, 允许变量在第一次使用的时候在被实例化
    /// 使用了 lazy 之后, 需要有配对的 设置数值的方法
    lazy var tableView: UITableView? = {
        
        print("懒加载了.....")
        // tableView 的初始化代码
        // 实例化表格视图, 添加到 self.view
        // 注意: 内部不能直接使用自己
        let view = UITableView(frame: self.view.bounds, style: UITableViewStyle.Plain)
        
        // 指定表格的数据源方法, 此时必须要遵守协议
        view.dataSource = self
        
        return view
        
    }()
    
    lazy var persons: [Person]? = {
        
        // 实例化数组
        let array = [Person(name: "张三", age: 18),
            Person(name: "张三 - 123", age: 18),
            Person(name: "张三 - 456", age: 18),
            Person(name: "张三 - 789", age: 18)]
        
        return array
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("开始添加表格视图.......")
        
        // 之所以要使用 ! 是因为定义时, 对象可以为空
        // 而 addSubView 函数不能接nil, 必须要有值
        self.view.addSubview(tableView!)
        
        
    }
    
    
    
}

// MARK: - 表格数据源扩展
// 利用 extension 可以将某一类相关代码写在一起 - 优雅
extension TableVC5: UITableViewDataSource {
    
    // 注意: 在扩展中, 不能包含存储的属性
    //    var str = "zhangsan"
    
    // MARK: - 数据源方法
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons!.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCellWithIdentifier("Cell") as? MyCell
        
        // 如果 cell 不存在, 创建一个 cell
        if cell == nil {
            // 实例化一个 cell
            cell = MyCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Cell")
        }
        
        // 设置内容
//        cell!.textLabel?.text = "我是老五 \(indexPath.row)"
        cell!.person = persons![indexPath.row]
        
        return cell!
    }
    
}


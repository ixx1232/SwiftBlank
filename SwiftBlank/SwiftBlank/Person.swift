//
//  Person.swift
//  SwiftBlank
//
//  Created by apple on 16/1/20.
//  Copyright © 2016年 www.ixx.com. All rights reserved.
//

import Foundation

/// 个人类
class Person {
    
    /// 姓名
    var name: String?
    
    /// 年龄
    var age: Int?
    
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
//
//  ViewController.swift
//  SwiftBlank
//
//  Created by apple on 16/1/19.
//  Copyright © 2016年 www.ixx.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.whiteColor()
        
        // 使用已有类型构建按钮
        let commonBtn = UIButton(type: UIButtonType.ContactAdd)
        
        // 修改按钮位置及大小
        commonBtn.center = self.view.center
        self.view.backgroundColor = UIColor.lightGrayColor()
        
        // 添加到界面
        self.view.addSubview(commonBtn)
    
        // 添加点击事件
        commonBtn.addTarget(self, action: "commonAction:", forControlEvents: UIControlEvents.TouchUpInside)
        
        commonBtn.tag = 1
        
    }

    func commonAction(commonBtn:UIButton) {
        print("点我了?")
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        // 自定义按钮
        let customButton = UIButton(frame: CGRectMake(self.view.frame.width/2 - 100, 400, 200, 200))
        
        // 设置按钮标题
        customButton.setTitle("custom", forState: UIControlState.Normal)
        
        // 设置按钮标题颜色
        customButton.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
        
        // 设置按钮标题阴影
        customButton.setTitleShadowColor(UIColor.blackColor(), forState: UIControlState.Normal)
        
        // 设置按钮阴影
        customButton.titleLabel?.shadowOffset = CGSizeMake(1.0, 1.0)
        
        // 设置按钮标题字体样式
        customButton.titleLabel!.font = UIFont.systemFontOfSize(17)
        
        // 设置按钮标题换行模式
        customButton.titleLabel!.lineBreakMode =  NSLineBreakMode.ByTruncatingTail
        
        // 设置按钮背景色
        customButton.backgroundColor = UIColor(red: 0.8, green: 0.8, blue: 0.8, alpha: 1.0)
        
        // 设置按钮内部内容边距
        customButton.contentEdgeInsets = UIEdgeInsetsMake(-100, 0, 0, 0)
        
        // 去掉高亮状态下的图像颜色加深
        customButton.adjustsImageWhenHighlighted = false
        
        // 去掉禁用状态下的图像颜色加深
        customButton.adjustsImageWhenHighlighted = false
        
        // 添加按钮按下发光效果
        customButton.showsTouchWhenHighlighted = true
        
        customButton.addTarget(self, action: "btnAction:", forControlEvents: UIControlEvents.TouchUpInside)
        
        // 设置按钮标签
        customButton.tag = 2
        
        self.view.addSubview(customButton)
        
        
    }
    
    func btnAction(sender: UIButton!) {
        
        print(sender.tag)
    }


}


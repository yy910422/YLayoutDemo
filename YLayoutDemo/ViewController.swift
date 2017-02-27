//
//  ViewController.swift
//  YLayoutDemo
//
//  Created by bg on 2017/2/27.
//  Copyright © 2017年 bg. All rights reserved.

//一个我都看不懂的关于constant正负的示意图
//                   Top    负
//-------------------------------------------------
//                   |       正                   |
//                   |                            |
//                   |                            |
//                   |                            |
// Left              |                           正|负
// ----------------------------------------------->Right
//                   |                            |
//                   |                            |
//                   |                            |
//                   |Bottom                      |
//                   |       正                   |
//-------------------------------------------------

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = UILabel()
        label.backgroundColor = UIColor.blue
        label.text = "this is test"
        label.textColor = UIColor.yellow
        self.view.addSubview(label)//该方法要放到布局代码前
        
        label.CenterX.layout(constrain: self.view.CenterX, constant: 0)
            .CenterY.layout(constrain: self.view.CenterY, constant: 0)
            .Left.layout(constrain: self.view.Left, constant: 20)
            .Right.layout(constrain: self.view.Right, constant: -20)
            .heightLayoutConstraint(height: 80)
        
      
        
        let greenView = UIView()
        greenView.backgroundColor = UIColor.green
        self.view.addSubview(greenView)
        
        greenView.Top.layout(constrain: label.Bottom, constant: 20)
        .CenterX.layout(constrain: label.CenterX, constant: 0)
        .widthLayoutConstraint(width: 80)
        .heightLayoutConstraint(height: 80)
        
        
       
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


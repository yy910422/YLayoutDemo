//
//  UIView+ConstraintExtensions.swift
//
//  Created by bg on 2017/1/20.
//  Copyright © 2017年 bg. All rights reserved.
//  对原生布局的封装

import UIKit

protocol ConstrainProtocol: class {
    
    var view_: UIView { get set }
    
}

extension ConstrainProtocol {
    
   
    var Left: ConstraintClass {
        get{
            return ConstraintClass(view: view_, attribute: .left)
        }
    }
    var Right: ConstraintClass {
        get{
            return ConstraintClass(view: view_, attribute: .right)
        }
    }
    var Top: ConstraintClass {
        get{
            return ConstraintClass(view: view_, attribute: .top)
        }
    }
    var Bottom: ConstraintClass {
        get{
            return ConstraintClass(view: view_, attribute: .bottom)
        }
    }
    var Leading: ConstraintClass {
        get{
            return ConstraintClass(view: view_, attribute: .leading)
        }
    }
    
    var Trailing: ConstraintClass {
        get{
            return ConstraintClass(view: view_, attribute: .trailing)
        }
    }
    
    var CenterX: ConstraintClass {
        get{
            return ConstraintClass(view: view_, attribute: .centerX)
        }
    }
    
    var CenterY: ConstraintClass {
        get {
            return ConstraintClass(view: view_, attribute: .centerY)
        }
    }
    
    var LastBaseline: ConstraintClass {
        get{
            return ConstraintClass(view: view_, attribute: .lastBaseline)
        }
    }
    
    
}


class ConstraintClass {
    var view: UIView!
    var attribute: NSLayoutAttribute!
    init(view: UIView!, attribute: NSLayoutAttribute!) {
        
        self.view = view
        self.attribute = attribute
    }
    
    func layout(constrain: ConstraintClass, constant: CGFloat) -> UIView! {
        self.view.layoutConstrainttoView(attribute: self.attribute, toItem: constrain.view, toAttribute: constrain.attribute, constant: constant)
        return view
    }
}


extension UIView: ConstrainProtocol {
    
    internal var view_: UIView {
        get {
            return self
        }
        set {
            self.view_ = newValue
        }
    }

    
}

extension UIViewController {
    
    
    
}


extension UIView {
    
    public func injectionLayout(f:()-> Void){
        
        
        
    }
    
    //添加宽度
    public func widthLayoutConstraint(width: CGFloat) -> UIView! {
        
        let width: NSLayoutConstraint = NSLayoutConstraint(item: self, attribute: .width, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: .width, multiplier: 0, constant: width)
        self.addConstraint(width)
        return self
        
    }
    
    //添加高度
    public func heightLayoutConstraint(height: CGFloat) {
        
        let height: NSLayoutConstraint = NSLayoutConstraint(item: self, attribute: .height, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: .width, multiplier: 0, constant: height)
        self.addConstraint(height)
        
    }
    
    //纯代码布局约束
    public func layoutConstrainttoView( attribute: NSLayoutAttribute, toItem:UIView,toAttribute: NSLayoutAttribute, constant: CGFloat) {
        self.translatesAutoresizingMaskIntoConstraints = false
        let layout = NSLayoutConstraint(item: self, attribute: attribute, relatedBy: .equal, toItem: toItem, attribute: toAttribute, multiplier: 1.0, constant: constant)
        self.superview?.addConstraint(layout)
    }
    
}

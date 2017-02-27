//
//  UIView+Extensions.swift
//
//  Created by apple on 15/12/9.
//  Copyright © 2015年 yygs. All rights reserved.
//

import UIKit
extension UIView{
    
    var x: CGFloat{
        get{
            return self.frame.origin.x
        }
        set{
            var frame = self.frame
            frame.origin.x = newValue
            self.frame = frame
        }
    }
    
    var y: CGFloat {
        get{
            return self.frame.origin.y
        }
        set{
            var frame = self.frame
            frame.origin.y = newValue
            self.frame = frame
        }
    }
    
    var width: CGFloat{
        get{
            return self.frame.size.width
        }
        set{
            var frame = self.frame
            frame.size.width = newValue
            self.frame = frame
        }
    }
    
    var height: CGFloat{
        get{
            return self.frame.size.height
        }
        set{
            var frame = self.frame
            frame.size.height = newValue
            self.frame = frame
        }
    }
    
    var size: CGSize{
        get{
            return self.frame.size
        }
        set{
            var frame = self.frame
            frame.size = newValue
            self.frame = frame
        }
    }
    
    //从nib创建UIVIew
    class func loadNibNamed(nibName:String) -> UIView{
        return Bundle.main.loadNibNamed(nibName, owner: nil, options: nil)!.first as! UIView
    }
}

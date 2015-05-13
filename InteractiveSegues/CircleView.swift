//
//  CircleView.swift
//  InteractiveSegues
//
//  Created by Priscilla Bevis on 13/05/2015.
//  Copyright (c) 2015 Priscilla Bevis. All rights reserved.
//

import UIKit

@IBDesignable class CircleView: UIView {
    
    @IBInspectable var color:UIColor = UIColor.blueColor()
    
    override func drawRect(rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        CGContextAddEllipseInRect(context, rect)
        CGContextSetFillColor(context, CGColorGetComponents(color.CGColor))
        CGContextFillPath(context)
    }
}

//
//  ViewController.swift
//  InteractiveSegues
//
//  Created by Priscilla Bevis on 13/05/2015.
//  Copyright (c) 2015 Priscilla Bevis. All rights reserved.
//

import UIKit

class RectanglesViewController: UIViewController {
    
    @IBOutlet var mainRectangle:UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let pan = UIPanGestureRecognizer(target: self, action: "panning:")
        mainRectangle.addGestureRecognizer(pan)
    }

    func panning(pan:UIPanGestureRecognizer) {
        if pan.state == UIGestureRecognizerState.Began {
            performSegueWithIdentifier("showDots", sender: nil)
        }
    }

}


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
    let transitioningManager = TransitioningManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let pan = UIPanGestureRecognizer(target: self, action: "panning:")
        mainRectangle.addGestureRecognizer(pan)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // this gets a reference to the screen that we're about to transition to
        let toViewController = segue.destinationViewController as! UIViewController
        
        // instead of using the default transition animation, we'll ask
        // the segue to use our custom TransitionManager object to manage the transition animation
        toViewController.transitioningDelegate = self.transitioningManager
    }

    func panning(pan:UIPanGestureRecognizer) {
        if pan.state == UIGestureRecognizerState.Began {
            performSegueWithIdentifier("showDots", sender: nil)
        }
    }

}


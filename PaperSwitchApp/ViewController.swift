//
//  ViewController.swift
//  PaperSwitchApp
//
//  Created by Матвей Кравцов on 04.04.16.
//  Copyright © 2016 Matvey Kravtsov. All rights reserved.
//

import UIKit
import RAMPaperSwitch

class ViewController: UIViewController {

    @IBOutlet weak private var mSwitch: RAMPaperSwitch!
    
    @IBOutlet weak var mLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.setupPaperSwitch();
    }
    
    private func setupPaperSwitch() {
        
        self.mSwitch.animationDidStartClosure = {(onAnimation: Bool) in
            UIView.transitionWithView(self.mLabel, duration: self.mSwitch.duration, options: UIViewAnimationOptions.TransitionCrossDissolve, animations: {
                self.mLabel.textColor = onAnimation ? UIColor.whiteColor() : UIColor.blueColor()
                }, completion:nil)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


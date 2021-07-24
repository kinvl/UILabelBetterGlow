//
//  ViewController.swift
//  UILabelBetterGlow
//
//  Created by kinvl on 07/24/2021.
//  Copyright (c) 2021 kinvl. All rights reserved.
//

import UIKit
import UILabelBetterGlow

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = BetterGlow()
        label.frame = CGRect(x: 100, y: 100, width: 250, height: 100)
        label.text = "Glowing label"
        label.glowRadius = 5
        label.glowColor = UIColor.red
        label.innerGlowRadius = 3
        label.innerGlowColor = UIColor.blue
        self.view.addSubview(label)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


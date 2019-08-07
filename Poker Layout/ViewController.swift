//
//  ViewController.swift
//  Poker Layout
//
//  Created by Justin Gluska on 8/7/19.
//  Copyright © 2019 Justin Gluska. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var helpButton: UIButton!
    
    override func viewDidLoad() {
        startButton?.layer.cornerRadius = 15
        helpButton?.layer.cornerRadius = 15
        let defaults = UserDefaults.standard
        defaults.set(3, forKey: "players")
        defaults.set(["none"], forKey: "names")
        // Receive

        super.viewDidLoad()
    }



}


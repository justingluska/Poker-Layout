//
//  NamePlayers.swift
//  Poker Layout
//
//  Created by Justin Gluska on 8/7/19.
//  Copyright © 2019 Justin Gluska. All rights reserved.
//

import UIKit

class NamePlayers: ViewController {
    
    var secondPlayers:Int = 3
    
    override func viewDidLoad() {
        playerAmountLabel.text = "\(secondPlayers)"
        super.viewDidLoad()
    }

    
    @IBOutlet weak var playerAmountLabel: UILabel!
}

//
//  TableLayout.swift
//  Poker Layout
//
//  Created by Justin Gluska on 8/7/19.
//  Copyright © 2019 Justin Gluska. All rights reserved.
//

import UIKit

class TableLayout: ViewController {

    var finalNames = ""
    var finalPlayers = 3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultsLabel.text = "\(finalPlayers) - \(finalNames)"
    }
    
    
    @IBOutlet weak var resultsLabel: UITextView!
    
    
    
}

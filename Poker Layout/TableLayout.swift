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
        finalNames = String(finalNames)
        if(finalPlayers == 3){
            resultsLabel.text = "\(finalPlayers) - \(finalNames)"
        }
        else{
            resultsLabel.text = "more than 3"
        }
    }
    
    
    @IBOutlet weak var resultsLabel: UITextView!
    
    
    
}

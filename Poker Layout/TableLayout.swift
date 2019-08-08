//
//  TableLayout.swift
//  Poker Layout
//
//  Created by Justin Gluska on 8/7/19.
//  Copyright © 2019 Justin Gluska. All rights reserved.
//

import UIKit

class TableLayout: ViewController {

    @IBOutlet weak var resultsLabel: UITextView!
    @IBOutlet weak var xPlayerTable: UILabel!
    
    var finalNames = ""
    var finalPlayers = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        xPlayerTable.text = "\(finalPlayers) Player Table"
        resultsLabel.text = "\(finalNames)"
    }
    
    

    
    
}

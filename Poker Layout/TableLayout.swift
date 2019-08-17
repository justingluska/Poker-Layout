//
//  TableLayout.swift
//  Poker Layout
//
//  Created by Justin Gluska on 8/7/19.
//  Copyright © 2019 Justin Gluska. All rights reserved.
//

import UIKit

class TableLayout: UIViewController {

    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    @IBOutlet weak var resultsLabel: UITextView!
    @IBOutlet weak var xPlayerTable: UILabel!
    
    var finalNames = ""
    var finalPlayers = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.setNavigationBarHidden(true, animated: false)
        xPlayerTable.text = "\(finalPlayers) Player Table".uppercased()
        resultsLabel.text = "\(finalNames)".uppercased()
        
    }
 
    @IBAction func returnHome(_ sender: Any) {


    }

    
}

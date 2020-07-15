//
//  TableLayout.swift
//  Poker Layout
//
//  Created by Justin Gluska on 8/7/19.
//  Copyright © 2019 Justin Gluska. All rights reserved.
//

import UIKit
import StoreKit
class TableLayout: UIViewController {

    enum AppStoreReviewManager {
      static func requestReviewIfAppropriate() {
        
      }
    }
    
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
        
        let seconds = 10.0
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            SKStoreReviewController.requestReview()
        }
        
    }
    
    
    
}

//
//  SelectPlayers.swift
//  Poker Layout
//
//  Created by Justin Gluska on 8/7/19.
//  Copyright © 2019 Justin Gluska. All rights reserved.
//

import UIKit

class SelectPlayers: ViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    var playerCount = 3
    
    
    @IBOutlet weak var playerLabel: UILabel!
    
    @IBOutlet weak var sliderNumber: UISlider!
    
    @IBAction func playerSlider(_ sender: UISlider) {
        self.playerCount = Int(sliderNumber.value)
        playerLabel.text = "[\(playerCount)]"
        
    }
    
    @IBAction func nextPage(_ sender: UIButton) {
        performSegue(withIdentifier: "toPlayer", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var fP = segue.destination as! NamePlayers
        fP.secondPlayers = self.playerCount
    }
   
    
}

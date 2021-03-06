//
//  SelectPlayers.swift
//  Poker Layout
//
//  Created by Justin Gluska on 8/7/19.
//  Copyright © 2019 Justin Gluska. All rights reserved.
//

import UIKit

class SelectPlayers: UIViewController {
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        moveOn.layer.cornerRadius = 15
        navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
    var playerCount = 3
    
    @IBOutlet weak var moveOn: UIButton!
    
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
        if (segue.identifier == "toPlayer"){
        let fP = segue.destination as! NamePlayers
        fP.secondPlayers = self.playerCount
        fP.enterNames = "Enter \(self.playerCount) Names"
        }
    }
}

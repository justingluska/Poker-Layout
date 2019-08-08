//
//  NamePlayers.swift
//  Poker Layout
//
//  Created by Justin Gluska on 8/7/19.
//  Copyright © 2019 Justin Gluska. All rights reserved.
//

import UIKit

class NamePlayers: ViewController {
    
    @IBOutlet weak var player1: UITextField!
    @IBOutlet weak var player2: UITextField!
    @IBOutlet weak var player3: UITextField!
    @IBOutlet weak var player4: UITextField!
    @IBOutlet weak var player5: UITextField!
    @IBOutlet weak var player6: UITextField!
    @IBOutlet weak var player7: UITextField!
    @IBOutlet weak var player8: UITextField!
    @IBOutlet weak var player9: UITextField!
    @IBOutlet weak var player10: UITextField!
    
    var secondPlayers:Int = 3
    var enterNames:String = "Enter Player Names"
    override func viewDidLoad() {
        enterPlayNamesLabel.text = enterNames
        if(secondPlayers == 3){
            player1.isHidden = false
            player2.isHidden = false
            player3.isHidden = false
            player4.isHidden = true
            player5.isHidden = true
            player6.isHidden = true
            player7.isHidden = true
            player8.isHidden = true
            player9.isHidden = true
            player10.isHidden = true
        }
        else if(secondPlayers == 4){
            player1.isHidden = false
            player2.isHidden = false
            player3.isHidden = false
            player4.isHidden = false
            player5.isHidden = true
            player6.isHidden = true
            player7.isHidden = true
            player8.isHidden = true
            player9.isHidden = true
            player10.isHidden = true
        }
        else if(secondPlayers == 5){
            player1.isHidden = false
            player2.isHidden = false
            player3.isHidden = false
            player4.isHidden = false
            player5.isHidden = false
            player6.isHidden = true
            player7.isHidden = true
            player8.isHidden = true
            player9.isHidden = true
            player10.isHidden = true
        }
        else if(secondPlayers == 6){
            player1.isHidden = false
            player2.isHidden = false
            player3.isHidden = false
            player4.isHidden = false
            player5.isHidden = false
            player6.isHidden = false
            player7.isHidden = true
            player8.isHidden = true
            player9.isHidden = true
            player10.isHidden = true
        }
        else if(secondPlayers == 7){
            player1.isHidden = false
            player2.isHidden = false
            player3.isHidden = false
            player4.isHidden = false
            player5.isHidden = false
            player6.isHidden = false
            player7.isHidden = false
            player8.isHidden = true
            player9.isHidden = true
            player10.isHidden = true
        }
        else if(secondPlayers == 8){
            player1.isHidden = false
            player2.isHidden = false
            player3.isHidden = false
            player4.isHidden = false
            player5.isHidden = false
            player6.isHidden = false
            player7.isHidden = false
            player8.isHidden = false
            player9.isHidden = true
            player10.isHidden = true
        }
        else if(secondPlayers == 9){
            player1.isHidden = false
            player2.isHidden = false
            player3.isHidden = false
            player4.isHidden = false
            player5.isHidden = false
            player6.isHidden = false
            player7.isHidden = false
            player8.isHidden = false
            player9.isHidden = false
            player10.isHidden = true
        }
        else if(secondPlayers == 10){
            player1.isHidden = false
            player2.isHidden = false
            player3.isHidden = false
            player4.isHidden = false
            player5.isHidden = false
            player6.isHidden = false
            player7.isHidden = false
            player8.isHidden = false
            player9.isHidden = false
            player10.isHidden = false
        }
        super.viewDidLoad()
    }

    
    @IBOutlet weak var enterPlayNamesLabel: UILabel!
    
    
    /*
     @IBAction func nextPage(_ sender: UIButton) {
     performSegue(withIdentifier: "toPlayer", sender: self)
     }
     
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     var fP = segue.destination as! NamePlayers
     fP.secondPlayers = self.playerCount
     fP.enterNames = "Enter \(self.playerCount) Names"
     }
 */
    func emptyTextAlert(){
        let alert = UIAlertController(title:"Error", message:"It is required that all input fields must be completely filled before generating your poker table.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title:"Understood", style: .default, handler: nil))
        self.present(alert, animated: true)
    }

    var ppNames = ""
    
    @IBAction func nextButton(_ sender: UIButton) {
        if(secondPlayers == 3){
            if((player1.text ?? "").isEmpty){
                emptyTextAlert()
            }
            if((player2.text ?? "").isEmpty){
                emptyTextAlert()
            }
            if((player3.text ?? "").isEmpty){
                emptyTextAlert()
            }
            let pNames = [player1.text!, player2.text!, player3.text!].shuffled()
            ppNames = "\(pNames)"
        }
        else if(secondPlayers == 4){
            if((player1.text ?? "").isEmpty){
                emptyTextAlert()
            }
            if((player2.text ?? "").isEmpty){
                emptyTextAlert()
            }
            if((player3.text ?? "").isEmpty){
                emptyTextAlert()
            }
            if((player4.text ?? "").isEmpty){
                emptyTextAlert()
            }
            let pNames = [player1.text, player2.text, player3.text].shuffled()
            ppNames = "\(pNames)"
        }
        else if(secondPlayers == 5){
            if((player1.text ?? "").isEmpty){
                emptyTextAlert()
            }
            if((player2.text ?? "").isEmpty){
                emptyTextAlert()
            }
            if((player3.text ?? "").isEmpty){
                emptyTextAlert()
            }
            if((player4.text ?? "").isEmpty){
                emptyTextAlert()
            }
            if((player5.text ?? "").isEmpty){
                emptyTextAlert()
            }
            let pNames = [player1.text, player2.text, player3.text].shuffled()
            ppNames = "\(pNames)"
        }
        else if(secondPlayers == 6){
            if((player1.text ?? "").isEmpty){
                emptyTextAlert()
            }
            if((player2.text ?? "").isEmpty){
                emptyTextAlert()
            }
            if((player3.text ?? "").isEmpty){
                emptyTextAlert()
            }
            if((player4.text ?? "").isEmpty){
                emptyTextAlert()
            }
            if((player5.text ?? "").isEmpty){
                emptyTextAlert()
            }
            if((player6.text ?? "").isEmpty){
                emptyTextAlert()
            }
            let pNames = [player1.text, player2.text, player3.text].shuffled()
            ppNames = "\(pNames)"
        }
        else if(secondPlayers == 7){
            if((player1.text ?? "").isEmpty){
                emptyTextAlert()
            }
            if((player2.text ?? "").isEmpty){
                emptyTextAlert()
            }
            if((player3.text ?? "").isEmpty){
                emptyTextAlert()
            }
            if((player4.text ?? "").isEmpty){
                emptyTextAlert()
            }
            if((player5.text ?? "").isEmpty){
                emptyTextAlert()
            }
            if((player6.text ?? "").isEmpty){
                emptyTextAlert()
            }
            if((player7.text ?? "").isEmpty){
                emptyTextAlert()
            }
            let pNames = [player1.text, player2.text, player3.text].shuffled()
            ppNames = "\(pNames)"
        }
        else if(secondPlayers == 8){
            if((player1.text ?? "").isEmpty){
                emptyTextAlert()
            }
            if((player2.text ?? "").isEmpty){
                emptyTextAlert()
            }
            if((player3.text ?? "").isEmpty){
                emptyTextAlert()
            }
            if((player4.text ?? "").isEmpty){
                emptyTextAlert()
            }
            if((player5.text ?? "").isEmpty){
                emptyTextAlert()
            }
            if((player6.text ?? "").isEmpty){
                emptyTextAlert()
            }
            if((player7.text ?? "").isEmpty){
                emptyTextAlert()
            }
            if((player8.text ?? "").isEmpty){
                emptyTextAlert()
            }
            let pNames = [player1.text, player2.text, player3.text].shuffled()
            ppNames = "\(pNames)"
        }
        else if(secondPlayers == 9){
            if((player1.text ?? "").isEmpty){
                emptyTextAlert()
            }
            if((player2.text ?? "").isEmpty){
                emptyTextAlert()
            }
            if((player3.text ?? "").isEmpty){
                emptyTextAlert()
            }
            if((player4.text ?? "").isEmpty){
                emptyTextAlert()
            }
            if((player5.text ?? "").isEmpty){
                emptyTextAlert()
            }
            if((player6.text ?? "").isEmpty){
                emptyTextAlert()
            }
            if((player7.text ?? "").isEmpty){
                emptyTextAlert()
            }
            if((player8.text ?? "").isEmpty){
                emptyTextAlert()
            }
            if((player9.text ?? "").isEmpty){
                emptyTextAlert()
            }
            let pNames = [player1.text, player2.text, player3.text].shuffled()
            ppNames = "\(pNames)"
        }
        else if(secondPlayers == 10){
            if((player1.text ?? "").isEmpty){
                emptyTextAlert()
            }
            if((player2.text ?? "").isEmpty){
                emptyTextAlert()
            }
            if((player3.text ?? "").isEmpty){
                emptyTextAlert()
            }
            if((player4.text ?? "").isEmpty){
                emptyTextAlert()
            }
            if((player5.text ?? "").isEmpty){
                emptyTextAlert()
            }
            if((player6.text ?? "").isEmpty){
                emptyTextAlert()
            }
            if((player7.text ?? "").isEmpty){
                emptyTextAlert()
            }
            if((player8.text ?? "").isEmpty){
                emptyTextAlert()
            }
            if((player9.text ?? "").isEmpty){
                emptyTextAlert()
            }
            if((player10.text ?? "").isEmpty){
                emptyTextAlert()
            }
            let pNames = [player1.text, player2.text, player3.text].shuffled()
            ppNames = "\(pNames)"
        }
        performSegue(withIdentifier: "toLayout", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var ffP = segue.destination as! TableLayout
        ffP.finalPlayers = self.secondPlayers
        ffP.finalNames = ppNames
    }
}

//
//  TableLayout.swift
//  Poker Layout
//
//  Created by Justin Gluska on 8/7/19.
//  Copyright © 2019 Justin Gluska. All rights reserved.
//

import UIKit
import GoogleMobileAds

class TableLayout: UIViewController, GADInterstitialDelegate {

    @IBOutlet weak var resultsLabel: UITextView!
    @IBOutlet weak var xPlayerTable: UILabel!
    
    var interstitial: GADInterstitial!
    
    var finalNames = ""
    var finalPlayers = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createAndLoadInterstitial()
        xPlayerTable.text = "\(finalPlayers) Player Table".uppercased()
        resultsLabel.text = "\(finalNames)".uppercased()
        
    }
    //bannerView.delegate = self
    //bannerView.rootViewController = self
    func createAndLoadInterstitial(){
        interstitial = GADInterstitial(adUnitID: "ca-app-pub-9134328104554845/8706610555")
        let request = GADRequest()
        request.testDevices = [ kGADSimulatorID ]
        interstitial.load(request)
        interstitial.delegate = self
        interstitial.present(fromRootViewController: self)
    }
    
    @IBAction func returnHome(_ sender: Any) {
//        if interstitial.isReady {
//            interstitial.present(fromRootViewController: self)
//        }
//        else{
//            print("she wasnt ready")
//        }
        interstitial!.present(fromRootViewController: self)
        createAndLoadInterstitial()
    }
    
}

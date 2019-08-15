//
//  StartScreen.swift
//  Poker Layout
//
//  Created by Justin Gluska on 8/15/19.
//  Copyright © 2019 Justin Gluska. All rights reserved.
//

import UIKit
import GoogleMobileAds

class StartScreen: UIViewController, GADBannerViewDelegate {

    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setNavigationBarHidden(true, animated: false)
        bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716"
        bannerView.adSize = kGADAdSizeSmartBannerPortrait
        bannerView.delegate = self
        bannerView.rootViewController = self
        bannerView.isHidden = true
        bannerView.load(GADRequest())
    }
    
    func viewWillAppear(){
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    @IBOutlet weak var bannerView: GADBannerView!
    var banner = GADBannerView?.self
    
    func adViewDidReceiveAd(_ bannerView: GADBannerView) {
        bannerView.isHidden = false
    }
    func adView(_ bannerView: GADBannerView,
                didFailToReceiveAdWithError error: GADRequestError) {
        bannerView.isHidden = true
    }
    
}

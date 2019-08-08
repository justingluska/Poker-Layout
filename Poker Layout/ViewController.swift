//
//  ViewController.swift
//  Poker Layout
//
//  Created by Justin Gluska on 8/7/19.
//  Copyright © 2019 Justin Gluska. All rights reserved.
//

import UIKit
import GoogleMobileAds

class ViewController: UIViewController, GADBannerViewDelegate {
    

    @IBOutlet weak var bannerView: GADBannerView!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var helpButton: UIButton!
    @IBOutlet weak var sButt: UIButton!
    @IBOutlet weak var hButt: UIButton!
    
    var banner: GADBannerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sButt.clipsToBounds = true
        sButt.layer.cornerRadius = 8
        hButt.clipsToBounds = true
        hButt.layer.cornerRadius = 15
        //startButton.clipsToBounds = true
        //startButton.layer.cornerRadius = 15
        //helpButton.layer.cornerRadius = 15
        bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716"
        bannerView.adSize = kGADAdSizeSmartBannerPortrait
        bannerView.delegate = self
        bannerView.rootViewController = self
        bannerView.isHidden = true
        bannerView.load(GADRequest())
    }
    func adViewDidReceiveAd(_ bannerView: GADBannerView) {
        bannerView.isHidden = false
    }
    func adView(_ bannerView: GADBannerView,
                didFailToReceiveAdWithError error: GADRequestError) {
        bannerView.isHidden = true
    }


}


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

    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var helpButton: UIButton!
    @IBOutlet weak var sButt: UIButton!
    @IBOutlet weak var hButt: UIButton!
    
    @IBOutlet weak var bannerView: GADBannerView!
    var banner: GADBannerView!
    
    override var prefersStatusBarHidden: Bool {
        return true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setNavigationBarHidden(false, animated: false)
        sButt.clipsToBounds = true
        sButt.layer.cornerRadius = 8
        hButt.clipsToBounds = true
        hButt.layer.cornerRadius = 15
        //startButton.clipsToBounds = true
        //startButton.layer.cornerRadius = 15
        //helpButton.layer.cornerRadius = 15
        bannerView.adUnitID = "ca-app-pub-9134328104554845/6074801683"
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


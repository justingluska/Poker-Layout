//
//  StartScreen.swift
//  Poker Layout
//
//  Created by Justin Gluska on 8/15/19.
//  Copyright © 2019 Justin Gluska. All rights reserved.
//

import UIKit
import GoogleMobileAds
import AVFoundation

class StartScreen: UIViewController, GADBannerViewDelegate {

    override var prefersStatusBarHidden: Bool{
        return true
    }
   
    @IBOutlet weak var sButt: UIButton!
    @IBOutlet weak var hButt: UIButton!
    
    var player: AVAudioPlayer?
    var Button_1_Pressed: Int = 0;
    var Button_2_Pressed: Int = 0;

    @IBAction func startDown(_ sender: Any) {
        Button_1_Pressed = 1;
    }
    @IBAction func helpDown(_ sender: Any) {
        Button_2_Pressed = 1;
    }
    
    @IBAction func startUp(_ sender: Any) {
        if (Button_1_Pressed == 1 && Button_2_Pressed == 1){
            playEaster()
        }
        Button_1_Pressed = 0;
    }
    @IBAction func helpUp(_ sender: Any) {
        if (Button_1_Pressed == 1 && Button_2_Pressed == 1){
            playEaster()
        }
        Button_2_Pressed = 0;
    }
    
    func playEaster(){
        print("easter")
        guard let url = Bundle.main.url(forResource: "easter", withExtension: "m4a") else { return }
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.m4a.rawValue)
            guard let player = player else { return }
            player.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sButt.clipsToBounds = true
        sButt.layer.cornerRadius = 17
        hButt.clipsToBounds = true
        hButt.layer.cornerRadius = 17
        navigationController?.setNavigationBarHidden(true, animated: false)
        bannerView.adUnitID = "ca-app-pub-9134328104554845/6074801683"
        bannerView.adSize = kGADAdSizeSmartBannerPortrait
        bannerView.delegate = self
        bannerView.rootViewController = self
        bannerView.isHidden = true
        bannerView.load(GADRequest())
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

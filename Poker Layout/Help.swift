//
//  Help.swift
//  Poker Layout
//
//  Created by Justin Gluska on 8/15/19.
//  Copyright © 2019 Justin Gluska. All rights reserved.
//

import UIKit

class Help: UIViewController {
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setNavigationBarHidden(false, animated: false)
    }
}

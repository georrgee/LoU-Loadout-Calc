//  ItemsInfoVC.swift
//  LoU Loadout Calc
//  Created by George Garcia on 4/6/20.
//  Copyright © 2020 GeeTeam. All rights reserved.

import UIKit

class ItemsInfoVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupEntireUI()
    }
    
    private func setupEntireUI() {
        setBackgroundWithImage()
        configureNavigationBar()
    }
}

//  LoadoutCalcVC.swift
//  LoU Loadout Calc
//  Created by George Garcia on 4/6/20.
//  Copyright © 2020 GeeTeam. All rights reserved.

import UIKit

class LoadoutCalcVC: UIViewController {
    
    let billyView = UIView(frame: .zero)

    override func viewDidLoad() {
        super.viewDidLoad()
        setupEntireUI()
        
        billyView.backgroundColor = .yellow
        billyView.centerInSuperview()
        
    }
    
    private func setupEntireUI() {
        setBGImageForVC()
        configureNavigationBar()
    }
}

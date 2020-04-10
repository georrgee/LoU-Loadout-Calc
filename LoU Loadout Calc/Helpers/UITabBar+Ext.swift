//  UITabBar+Ext.swift
//  LoU Loadout Calc
//  Created by George Garcia on 4/8/20.
//  Copyright © 2020 GeeTeam. All rights reserved.

import UIKit

extension UITabBar {
    
    static func setupCustomTabbar() {
        //UITabBar.appearance().tintColor         = #colorLiteral(red: 0.9225583076, green: 0.9140970111, blue: 0.8658707738, alpha: 1)
        UITabBar.appearance().backgroundImage   = UIImage()
        UITabBar.appearance().shadowImage       = UIImage()
        UITabBar.appearance().clipsToBounds     = true
    }
}

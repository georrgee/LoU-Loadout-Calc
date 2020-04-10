//  UIViewController+Ext.swift
//  LoU Loadout Calc
//  Created by George Garcia on 4/6/20.
//  Copyright © 2020 GeeTeam. All rights reserved.

import UIKit

extension UIViewController {
    
    func setBackgroundWithImage() {
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "background-portrait")
        backgroundImage.contentMode = UIView.ContentMode.scaleAspectFill
        view.insertSubview(backgroundImage, at: 0)
    }
    
    func configureNavigationBar() {
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.font: UIFont(name: LoUFonts.logoFont, size: 46) ?? UIFont.systemFont(ofSize: 46), NSAttributedString.Key.foregroundColor: UIColor.white]
    }
    
    func checkFamilyFonts() {
        for family in UIFont.familyNames.sorted() {
            let names = UIFont.fontNames(forFamilyName: family)
            print("Family: \(family) Font Names: \(names)")
        }
    }
}

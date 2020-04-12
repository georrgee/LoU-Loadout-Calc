//  UITableView+Ext.swift
//  LoU Loadout Calc
//  Created by George Garcia on 4/9/20.
//  Copyright © 2020 GeeTeam. All rights reserved.

import UIKit

extension UITableView {
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}

extension UITableViewController {
    
        func setTCBackgroundWithImage() {
    //        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
    //        backgroundImage.image = UIImage(named: "background-portrait")
    //        backgroundImage.contentMode = UIView.ContentMode.scaleAspectFill
    //        view.insertSubview(backgroundImage, at: 0)
            self.view.backgroundColor = UIColor(patternImage: LastOfUsImages.BackgroundImage.backgroundPortrait!)
        }
}

//  AboutModel.swift
//  LoU Loadout Calc
//  Created by George Garcia on 4/8/20.
//  Copyright © 2020 GeeTeam. All rights reserved.

import UIKit

struct AboutModel {
    
    let iconImage: UIImage
    let title:     String
    
    static let list: [AboutModel] = [
        AboutModel(iconImage: LastOfUsImages.AboutIcons.settingsIcon!, title: "SETTINGS"),
        AboutModel(iconImage: LastOfUsImages.AboutIcons.developerIcon!, title: "DEVELOPED BY PERUCAN")
    ]
}

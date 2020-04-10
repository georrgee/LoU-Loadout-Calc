//  Constants.swift
//  LoU Loadout Calc
//  Created by George Garcia on 4/6/20.
//  Copyright © 2020 GeeTeam. All rights reserved.

import UIKit

enum LastOfUsImages {
    
    static let placeholder = UIImage(named: "firefly-logo")?.withRenderingMode(.automatic)
    
    enum BackgroundImage {
        static let backgroundPortrait = UIImage(named: "background-portrait")?.withRenderingMode(.automatic)
    }
    
    enum TabBarIcon {
        static let calculator = UIImage(named: "icon-calculator")?.withRenderingMode(.automatic)
        static let list       = UIImage(named: "icon-list")?.withRenderingMode(.automatic)
        static let info       = UIImage(named: "icon-info")?.withRenderingMode(.automatic)
        static let music      = UIImage(named: "icon-music")?.withRenderingMode(.automatic)
        static let about      = UIImage(named: "icon-about")?.withRenderingMode(.automatic)
    }
    
    enum AboutIcons {
        static let developerIcon = UIImage(named: "icon-developer")?.withRenderingMode(.automatic)
        static let settingsIcon  = UIImage(named: "icon-settings")?.withRenderingMode(.automatic)
    }
}

struct LoUFonts {
    
    static let logoFont = "PressGothic"
    static let textDIN  = "D-DIN"
}

struct Feedback {
    static let softFeedback   = UIImpactFeedbackGenerator(style: .soft)
    static let rigidFeedback  = UIImpactFeedbackGenerator(style: .rigid)
    static let heavyFeedback  = UIImpactFeedbackGenerator(style: .heavy)
    static let mediumFeedback = UIImpactFeedbackGenerator(style: .medium)
    static let lightFeedback  = UIImpactFeedbackGenerator(style: .light)
}

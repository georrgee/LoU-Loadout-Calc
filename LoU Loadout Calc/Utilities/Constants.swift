//  Constants.swift
//  LoU Loadout Calc
//  Created by George Garcia on 4/6/20.
//  Copyright © 2020 GeeTeam. All rights reserved.

import UIKit

struct YouTubeAPI {
    static let apiKey       = "AIzaSyCuVovqzv7Ol9G3j6ClfB9RnpHXX0BsIAU"
    static let playlistID   = "PL3C8IoEFx1u-Y4gP5fW0GkVDe_UdI_RVz"
    //static let playlistURL  = "https://youtube.com/playlist?list=PL3C8IoEFx1u-Y4gP5fW0GkVDe_UdI_RVz"

    
    struct Thumbnail {
        static let URL = "https://img.youtube.com/vi/"
    }
}

enum YouTubeThumbnailType {
    static let defaultThumbnail = "/default.jpg"
    static let mediumQuality    = "/mqdefault.jpg"
}

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
        static let appVersionIcon = UIImage(systemName: SFSymbols.appVersion)?.withTintColor(.label).withRenderingMode(.alwaysOriginal)
            
    }
    
    enum SFSymbols {
        static let appVersion = "a.circle.fill"
    }

}



struct LoUFonts {
    
    static let logoFont = "PressGothic"
    static let textDIN  = "D-DIN"
}

struct LoUColors {
    
    static let backgroundCellColor = UIColor(red: 0.1647058824, green: 0.1568627451, blue: 0.1568627451, alpha: 0.5)
}

struct Feedback {
    static let softFeedback   = UIImpactFeedbackGenerator(style: .soft)
    static let rigidFeedback  = UIImpactFeedbackGenerator(style: .rigid)
    static let heavyFeedback  = UIImpactFeedbackGenerator(style: .heavy)
    static let mediumFeedback = UIImpactFeedbackGenerator(style: .medium)
    static let lightFeedback  = UIImpactFeedbackGenerator(style: .light)
}




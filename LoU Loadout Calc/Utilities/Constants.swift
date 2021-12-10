//  Constants.swift
//  LoU Loadout Calc
//  Created by George Garcia on 4/6/20.
//  Copyright © 2020 GeeTeam. All rights reserved.

import UIKit

struct YouTubeAPI {
    static var API_KEY       = "AIzaSyCN-F641HQisqloQ2JBYlftxHfe0BPXZ9w"
    static var PLAYLIST_ID   = "PL3C8IoEFx1u-Y4gP5fW0GkVDe_UdI_RVz"
    static var PLAYLIST_URL  = "https://youtube.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(PLAYLIST_ID)&key=\(API_KEY)"

    struct Thumbnail {
        static var URL = "https://img.youtube.com/vi/"
    }
}

enum YouTubeThumbnailType {
    static var defaultThumbnail = "/default.jpg"
    static var mediumQuality    = "/mqdefault.jpg"
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
        static let appVersionIcon = UIImage(named: "icon-appVersion")!.withRenderingMode(.alwaysOriginal)
        static let lightBulb = UIImage(named: "icon-foundersWebsite")
    }
    
    enum SFSymbols {
        static let appVersion = "a.circle.fill"
        static let lightBulb = "lightbulb.fill"
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




//  Video.swift
//  LoU Loadout Calc
//  Created by George Garcia on 4/24/20.
//  Copyright © 2020 GeeTeam. All rights reserved.

import Foundation

struct Video: Codable {
    
    struct Snippet: Codable {
        
        struct Thumbnails: Codable {
            var url: String
        }
        
        var title:       String
        var description: String
        var thumbnails:  Thumbnails
    }
    
    struct ContentDetails: Codable {
        var duration: String
    }
    
    var id:             String
    var snippet:        Snippet
    var contentDetails: ContentDetails
}


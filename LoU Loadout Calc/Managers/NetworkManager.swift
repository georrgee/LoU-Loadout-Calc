//  NetworkManager.swift
//  LoU Loadout Calc
//  Created by George Garcia on 4/25/20.
//  Copyright © 2020 GeeTeam. All rights reserved.

import UIKit

class NetworkManager {
    
    static let shared    = NetworkManager()
    let cache            = NSCache<NSString, UIImage>()
    
//    func fetchVideosFromPlaylist(from urlString: String, completed: @escaping ([Video]) -> Void) {
//        
//        let urlString = "https://www.googleapis.com/youtube/v3/playlistItems"
//        guard let url = URL(string: urlString) else { return }
//        
//        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
//            
//            if let _ = error {
//                print("Error!!!")
//            }
//            
//            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else { return }
//            
//            guard let data = data else {
//                return
//            }
//            
//            // parsing json
//            do {
//                let decoder = JSONDecoder()
//                decoder.keyDecodingStrategy = .convertFromSnakeCase
//                //let videos = try decoder.decode([Video].self, from: data)
//                print("Data: \(data)")
//            } catch {
//                print("Didnt parse!!")
//            }
//        }
//        task.resume()
//    }
    
    func downloadImage(from urlString: String, completed: @escaping(UIImage?) -> Void) {
            
        let cacheKey = NSString(string: urlString)
        
        if let image = cache.object(forKey: cacheKey) {
            completed(image)
            return
        }
        
        guard let url = URL(string: urlString) else {
            completed(nil)
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] (data, response, error) in
            guard let self = self,
                error == nil,
                
                let response = response as? HTTPURLResponse,
                response.statusCode == 200,
                
                let data = data,
                
                let image = UIImage(data: data) else {
                    completed (nil)
                    return }
            self.cache.setObject(image, forKey: cacheKey)
            completed(image)
        }
        task.resume()
    }
}

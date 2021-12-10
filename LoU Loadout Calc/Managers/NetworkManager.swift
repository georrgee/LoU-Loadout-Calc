//  NetworkManager.swift
//  LoU Loadout Calc
//  Created by George Garcia on 4/25/20.
//  Copyright © 2020 GeeTeam. All rights reserved.

import UIKit

enum APIError: Error {
    case failedToFetchData
}


final class NetworkManager {
    
    static let shared    = NetworkManager()
    let cache            = NSCache<NSString, UIImage>()
    
    public func getPlaylistVideos(completion: @escaping (Result<PlaylistItem, Error>) -> Void) {
        
        let session = URLSession(configuration: .default)
        guard let url = URL(string: YouTubeAPI.PLAYLIST_URL) else { return }
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
//        request.setValue("application/json", forHTTPHeaderField: "Accept")
//        request.setValue("Bearer \(YouTubeAPI.API_KEY)", forHTTPHeaderField: "Authorization")
//
        let task = session.dataTask(with: request) { (data, response, error) in
            guard let data = data, error == nil else {
                print("Failed to Fetch Playlist Videos!")
                completion(.failure(APIError.failedToFetchData))
                return
            }
            
            do {
                let json = try JSONDecoder().decode(PlaylistItem.self, from: data)
                completion(.success(json))
                //print("JSON DATA: \(json)")
//                let json = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
//                print(json)
            } catch let jsonError {
                print(jsonError)
            }
        }
        
        task.resume()
    }
    
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

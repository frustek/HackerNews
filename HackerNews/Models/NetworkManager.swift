//
//  NetworkManager.swift
//  HackerNews
//
//  Created by Adam Mroz on 10/09/2022.
//

import Foundation

class NetworkManager {
    
    func fetchData(){
        if let url = URL(string: "https://hacker-news.firebaseio.com/v0/beststories.json") {
            let session = URLSession(configuration: .default)
                let task = session.dataTask(with: url) { data, response, error in
                    if error == nil {
                        print("no error occured! :-) ")
                        
                        let decoder = JSONDecoder()
                        if let safeData = data {
                            do {
                                let results = try decoder.decode(Results.self, from: safeData)
                            } catch {
                                print(error)
                            }
                        }
                        
                        
                        
                    } else
                    {
                        print("error occured!")
                    }
            }
            task.resume()
        }
    }
}

//
//  NetworkManager.swift
//  Newz
//
//  Created by jishnu biju on 13/12/23.
//

import Foundation

class NetworkManager: ObservableObject {
    
    @Published var news = [Article]()
    
    func fetchNews(){
        if let path = Bundle.main.path(forResource: "Config", ofType: "plist"),
           let xml = FileManager.default.contents(atPath: path) {
            do {
                let configDict = try PropertyListSerialization.propertyList(from: xml, options: .mutableContainers, format: nil) as? [String: Any]
                if let apiKey = configDict?["API_KEY"] as? String {
                    if let url = URL(string: "https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=\(apiKey)"){
                        URLSession.shared.dataTask(with: url) { data, response, error in
                            if error == nil {
                                let decoder = JSONDecoder()
                                if let safeData = data {
                                    do {
                                        let results = try decoder.decode(PostModel.self, from: safeData)
                                        DispatchQueue.main.async {
                                            self.news = results.articles
                                        }
                                    }
                                    catch {
                                        print(error)
                                    }
                                }
                            }
                        }.resume()
                    }
                }
            } catch {
                print("Error reading plist: \(error)")
            }
        }
    }
    
    
}

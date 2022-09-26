//
//  Parser.swift
//  FirstSwiftUIApp
//
//  Created by Anthony Albertini on 21/09/2022.
//

// https://github.com/public-apis/public-apis
// https://spaceflightnewsapi.net/
// https://www.udemy.com/course/swiftui2020/learn/lecture/21256518#overview

import Foundation

class Parser: ObservableObject {
    let articlesAPI: String = "https://api.spaceflightnewsapi.net/v3/articles"
    
    @Published var articlesData: [Article] = []
    
    
    func getArticles() {
        guard let url = URL(string: articlesAPI) else { fatalError("Missing URL") }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                do {
                    let result = try JSONDecoder().decode([Article].self, from: data)
                    
                    DispatchQueue.main.async {
                        self.articlesData = result
                    }
                    
                    //                    print(result.count)
                    //                    print(result)
                } catch {
                    print(error)
//                        print(error.localizedDescription)
                }
            }
        }
        
        task.resume()
    }
}

//
//  DataFromAPIVIew.swift
//  FirstSwiftUIApp
//
//  Created by Anthony Albertini on 21/09/2022.
//

import SwiftUI

struct DataFromAPIVIew: View {
    @StateObject var parser: Parser

    var body: some View {
        let articles = parser.articlesData
        let countData = parser.articlesData.count
        
        ScrollView(showsIndicators: true) {
            
            Text("Count articles: \(countData)").font(.title)
            
            if (countData > 0) {
//                LazyVStack
                VStack(spacing: 20) {
                    
                    ForEach(articles, id: \.id) { article in
                        
                        HStack(spacing: 10) {
                            Text("\(article.title)")
                            
                            AsyncImage(url: URL(string: article.imageUrl)) { image in
                                image.resizable()
                            } placeholder: {
                                Color.gray
                            }
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 200, height: 200)
                            .clipShape(RoundedRectangle(cornerRadius: 25))
                        }
                    }
                }
            } else {
                Text("Loading...")
            }
        }.onAppear {
            parser.getArticles()
        }
    }
}

struct DataFromAPIVIew_Previews: PreviewProvider {
    static var previews: some View {
        DataFromAPIVIew(parser: Parser())
    }
}

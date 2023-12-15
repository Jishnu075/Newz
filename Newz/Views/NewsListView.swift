//
//  NewsListView.swift
//  Newz
//
//  Created by jishnu biju on 13/12/23.
//

import SwiftUI

struct NewsListView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        List(networkManager.news) {article in
            NavigationLink(destination: ArticleDetailView(title:article.title, desc: article.description)){
                Text(article.title)
            }
        }.navigationTitle("Newz")
            .onAppear {
                self.networkManager.fetchNews()
            }
    }
}
#Preview {
    NewsListView()
}

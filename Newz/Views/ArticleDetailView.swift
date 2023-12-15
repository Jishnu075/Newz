//
//  ArticleDetailView.swift
//  Newz
//
//  Created by jishnu biju on 13/12/23.
//

import SwiftUI

struct ArticleDetailView: View {
    let title: String
    let desc: String
    var body: some View {
        VStack {
            VStack {
                Text(title).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text(desc).font(.subheadline).padding(.top, 10)
            }.padding()
            Spacer()
        }
        
        
    }
}

#Preview {
    ArticleDetailView(title: "kasdlak", desc: "asdada")
}

//
//  ContentView.swift
//  Newz
//
//  Created by jishnu biju on 12/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView(content: {
            ZStack {
                Color.black
                VStack {
                    Text("Newz")
                        .bold()
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .bold()
                        .padding()
                    NavigationLink(destination: NewsListView()) {
                        Text("get it")
                            .foregroundStyle(.blue)
                            .bold()
                    }
                }.foregroundColor(.white)
            }.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)

        })

    }
}

#Preview {
    ContentView()
}

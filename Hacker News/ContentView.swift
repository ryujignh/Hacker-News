//
//  ContentView.swift
//  Hacker News
//
//  Created by Ryuji Ganaha on 2020/11/14.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
        
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                Text(post.title)
            }
            .navigationBarTitle("Hacker News")
        }
        .onAppear(perform: {
            networkManager.fetchData()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//let posts = [
//    Post(id: "1", title: "Hello"),
//    Post(id: "2", title: "Hello1"),
//    Post(id: "3", title: "Hello2"),
//]

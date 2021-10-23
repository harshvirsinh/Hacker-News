//
//  ContentView.swift
//  Hacker News
//
//  Created by Harshvirsinh Parmar on 20/10/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        NavigationView{
            List(networkManager.posts){ post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack{
                        Text(String(post.points))
                    Text(post.title)
                    }
                }
               
            }
            .navigationBarTitle("Hacker News")
        }
        .onAppear {
            self.networkManager.fetchdata()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



//let posts = [Post(id: "1", tittle: "Hello Veer"),
//            Post(id: "2", tittle: "Hello Hitendra"),
//            Post(id: "3", tittle: "Hello harsh"),
//             Post(id: "4", tittle: "Hello kajal"),
//             Post(id: "5", tittle: "Hello tejal")]

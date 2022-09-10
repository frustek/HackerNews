//
//  ContentView.swift
//  HackerNews
//
//  Created by Adam Mroz on 10/09/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                List(posts){ post in
                    Text(post.title)
                }
            }
            .navigationTitle("Hacker news")
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Post: Identifiable {
    let id: Int
    let title: String
}

let posts = [
    Post(id: 1, title: "Hello"),
    Post(id: 2, title: "Hello"),
    Post(id: 3, title: "Hello"),
    Post(id: 4, title: "Hello"),
    Post(id: 5, title: "Hello")]

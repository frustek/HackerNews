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
            List(posts) { post in
                Text(post.title)
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
/*
struct Post: Identifiable {
    let id: Int
    let title: String
}
 */

let posts = [
    Post(objectID: 1, points:5, title: "Hello", url: "www."),
    Post(objectID: 2, points:5, title: "Hello2", url: "www."),
    Post(objectID: 3, points:5, title: "Hello3", url: "www."),
    Post(objectID: 4, points:5, title: "Hello4", url: "www."),
    Post(objectID: 5, points:5, title: "Hello5", url: "www.")]
    
    /*
    Post(id: 2, title: "Bonjur"),
    Post(id: 3, title: "Hola"),
    Post(id: 4, title: "Servus"),
    Post(id: 5, title: "Cześć")]*/

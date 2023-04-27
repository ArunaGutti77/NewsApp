//
//  ContentView.swift
//  H4XOR News
//
//  Created by Aruna G on 08/01/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
                .navigationBarTitle("H4XOR News")
            }
            .onAppear {
                self.networkManager.fetchData()
            }
        }
        
        
        
        
    //    struct ContentView_Previews: PreviewProvider {
         //   static var previews: some View {
         //       ContentView()
         //   }
        }
        struct Post: Identifiable {
            let id: String
            let title: String
        }
        
        
        // let posts = [
        
        //    Post(id: "1", title: "Hello"),
        //  Post(id: "2", title: "Bonjour"),
        //Post(id: "3", title: "Hola")]
        
        
        
    }


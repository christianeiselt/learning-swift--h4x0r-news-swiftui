//
//  ContentView.swift
//  H4X0R-News-SwiftUI
//
//  Created by Christian Eiselt on 27.03.21.
//

import SwiftUI

struct ContentView: View {

  @ObservedObject var networkManager = NetworkManager()

  var body: some View {
    NavigationView {
      List(networkManager.posts) { post in
        HStack {
          Text(String(post.points))
          Text(post.title)
        }
      }
      .navigationBarTitle("H4X0R News")
    }
    .onAppear {
      self.networkManager.fetchData()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}


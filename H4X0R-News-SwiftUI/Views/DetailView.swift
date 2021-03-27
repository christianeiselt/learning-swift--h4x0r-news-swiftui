//
//  DetailView.swift
//  H4X0R-News-SwiftUI
//
//  Created by Christian Eiselt on 27.03.21.
//

import SwiftUI

struct DetailView: View {

  let url: String?

  var body: some View {
    WebView(urlString: url)    }
}

struct DetailView_Previews: PreviewProvider {
  static var previews: some View {
    DetailView(url: "https://www.duckduckgo.com")
  }
}

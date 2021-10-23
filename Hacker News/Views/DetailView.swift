//
//  DetailView.swift
//  Hacker News
//
//  Created by Harshvirsinh Parmar on 20/10/21.
//

import SwiftUI
import WebKit
struct DetailView: View {
    let url: String?
    var body: some View {
        WebView(urlstring: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}


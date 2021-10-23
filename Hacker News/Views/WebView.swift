//
//  WebView.swift
//  Hacker News
//
//  Created by Harshvirsinh Parmar on 20/10/21.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable{
    let urlstring: String?
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safestring = urlstring{
            if let url = URL(string: safestring){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}


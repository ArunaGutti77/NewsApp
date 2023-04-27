//
//  DetailView.swift
//  H4XOR News
//
//  Created by Aruna G on 09/01/23.
//

import SwiftUI
import WebKit

struct DetailView: View {
    let url : String?
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "http://www.google.com")
    }
}


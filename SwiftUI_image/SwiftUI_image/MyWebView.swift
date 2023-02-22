//
//  SwiftUIView.swift
//  SwiftUI_image
//
//  Created by 임영준 on 2023/02/23.
//

import SwiftUI
import WebKit

struct MyWebView: UIViewRepresentable {
    var url: String
    
    func makeUIView(context: Context) -> WKWebView {
        
        guard let url = URL(string: self.url) else {
            return WKWebView()
        }
        
        let urlRequest = URLRequest(url: url)
        let wkWebview = WKWebView()
        wkWebview.load(urlRequest)
        return wkWebview
    }

    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<MyWebView>) {
        
    }
}
    
    


struct MyWebView_Previews: PreviewProvider {
    static var previews: some View {
        MyWebView(url: "https://www.naver.com")
    }
}

//
//  ContentView.swift
//  SwiftUI_image
//
//  Created by 임영준 on 2023/02/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView{
            VStack{
                
                Image("myImage")
                    .frame(height: 10)
                    .offset(y: -1100)
                
                CircleImageView()
                
                HStack{
                    NavigationLink(destination: MyWebView(url: "https://www.google.com")
                        .edgesIgnoringSafeArea(.all)){
                        Text("구독하러 가기")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.red)
                            .cornerRadius(20)
                    }
                    NavigationLink(destination: MyWebView(url: "https://www.naver.com")
                        .edgesIgnoringSafeArea(.all)){
                        Text("오픈카톡방 가기")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.orange)
                            .cornerRadius(20)
                    }
                }
                .padding()
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

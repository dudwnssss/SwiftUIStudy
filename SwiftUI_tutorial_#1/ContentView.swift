//
//  ContentView.swift
//  SwiftUI_tutorial_#1
//
//  Created by Jeff Jeong on 2020/06/30.
//  Copyright © 2020 Tuentuenna. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    //
    @State var isActivated: Bool = false
    
    // 몸체
    var body: some View {
        NavigationView{
            
            VStack{
                HStack{
                    MyVstackView(isActivated: $isActivated)
                    MyVstackView(isActivated: $isActivated)
                    MyVstackView(isActivated: $isActivated)
                } // Hstack
                .padding(isActivated ? 50.0 : 10)
                .background(isActivated ? Color.yellow : Color.black)
                .onTapGesture {
                    withAnimation{
                        self.isActivated.toggle()
                    }
                    
                }
                
                NavigationLink(destination: MyTextView(isActivated: $isActivated)) {
                    Text("네비게이션")
                        .font(.system(size: 50))
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding()
                        .background(Color.orange)
                        .cornerRadius(30)
                } .padding(.top, 50)
            }
            
        }
        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

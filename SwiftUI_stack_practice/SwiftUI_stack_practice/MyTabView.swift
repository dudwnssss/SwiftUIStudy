//
//  MyTabView.swift
//  SwiftUI_stack_practice
//
//  Created by 임영준 on 2023/02/27.
//

import SwiftUI

struct MyTabView: View {
    var body: some View {
        
        TabView{
            //보여질 화면
            MyView(title: "1번", bgColor: Color.red)
                .tabItem{
                    Image(systemName: "airplane")
                    Text("1번")
                }
                .tag(0)
            MyView(title: "2번", bgColor: Color.orange)
                .tabItem{
                    Image(systemName: "flame.fill")
                    Text("2번")
                }
                .tag(1)
            MyView(title: "3번", bgColor: Color.blue)
                .tabItem{
                    Image(systemName: "doc.fill")
                    Text("3번")
                }
                .tag(2)


        }
    }
}

struct MyTabView_Previews: PreviewProvider {
    static var previews: some View {
        MyTabView()
    }
}

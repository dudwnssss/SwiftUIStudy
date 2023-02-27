//
//  MyView.swift
//  SwiftUI_stack_practice
//
//  Created by 임영준 on 2023/02/27.
//

import SwiftUI

struct MyView: View {
    var title: String
    var bgColor: Color
    
    var body: some View {
        ZStack{
            bgColor //배경색 먼저 올리기
                .edgesIgnoringSafeArea(.all)
            Text(title) //배경색 위에 텍스트 올리기
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(Color.white)
        }
    }
}

struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        MyView(title: "마이뷰", bgColor: .orange)
    }
}

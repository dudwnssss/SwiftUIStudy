//
//  MyCircleImageView.swift
//  SwiftUI_stack_practice
//
//  Created by 임영준 on 2023/02/27.
//

import SwiftUI

struct MyCircleImageView: View {
    
    var imageString: String
  
    var body: some View {
        Image(imageString)
            .resizable() //이미지를 크기에 알맞게
            .scaledToFill() //이미지를 전체에 채운다.
            .frame(width: 250, height: 250)
            .padding(.trailing, 10) //이미지 밀려고
            .clipShape(Circle())
            .shadow(color: .gray, radius: 10, x:0, y: 10)
            .overlay(
            Circle()
                .strokeBorder(Color.yellow, lineWidth: 15)
            /** 그냥 스트로크와의 차이
             그냥 스트로크는 이미지 테두리를 정중앙으로 하면서 스트로크가 들어감
             스트로크 볼더는 이미지 테두리 안쪽으로 스트로크가 들어감
             **/
            )
    }
}

struct MyCircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        MyCircleImageView(imageString: "3")
    }
}

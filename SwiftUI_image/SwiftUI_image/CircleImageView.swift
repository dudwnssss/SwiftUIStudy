//
//  CircleImageView.swift
//  SwiftUI_image
//
//  Created by 임영준 on 2023/02/23.
//

import SwiftUI

struct CircleImageView : View {
    var body: some View{
        //        Image(systemName: "bolt.circle")
        //            .font(.system(size: 200))
        //            .foregroundColor(.yellow)
        //            .shadow(color: .gray, radius: 2, x: 5, y: 10)
        Image("myImage")
            .resizable()
            .scaledToFill()
            .frame(width: 300, height: 300)
            .clipShape(Circle())
            .shadow(color: .gray, radius: 10, x: 5, y: 10)
            .overlay(Circle()
                .foregroundColor(.black)
                .opacity(0.5))
            .overlay(
                Circle().stroke(Color.red, lineWidth: 10)
                    .padding()
            )
            .overlay(
                Circle().stroke(Color.yellow, lineWidth: 10)
                    .padding(30)
            )
            .overlay(
                Circle().stroke(Color.blue, lineWidth: 10)
            )
            .overlay(
            Text("호호")
                .foregroundColor(.white)
                .font(.system(size: 50))
                .fontWeight(.bold)
            
            )
        
        
//            .aspectRatio(contentMode: .fill)
//            .frame(width: 200, height: 100)
//            .clipped()
//            .edgesIgnoringSafeArea(.all)
        
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView()
    }
}

//
//  MyGeometryReader.swift
//  SwiftUI_stack_practice
//
//  Created by 임영준 on 2023/02/27.
//

import SwiftUI

struct MyGeometryReader: View {
    var body: some View {
        
        GeometryReader{
            geometryReader in
            
            HStack(spacing: 0){
                Text("1")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(width: geometryReader.size.width/3)
                    .foregroundColor(Color.white)
                    .background(Color.red)
                Text("2")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(width: geometryReader.size.width/4)                    .foregroundColor(Color.white)
                    .background(Color.blue)

//                Text("3")
//                    .font(.largeTitle)
//                    .fontWeight(.black)
//                    .frame(width: geometryReader.size.width/3)                    .foregroundColor(Color.white)
//                    .background(Color.green)

//                Text("4")
//                    .font(.largeTitle)
//                    .fontWeight(.black)
//                    .frame(width: 100)
//                    .foregroundColor(Color.white)
//                    .background(Color.purple)
            }
            .background(Color.yellow)
        }
        .background(Color.black)

    }
}

struct MyGeometryReader_Previews: PreviewProvider {
    static var previews: some View {
        MyGeometryReader()
    }
}

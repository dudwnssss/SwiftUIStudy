//
//  MyVstack.swift
//  SwiftUI_stack
//
//  Created by 임영준 on 2023/02/24.
//

import SwiftUI

struct MyVstack: View {
    var body: some View {
        VStack(alignment: .trailing, spacing: 0) {
            
//            Spacer()
            Divider()
                .opacity(0)
            
//            Rectangle()
//                .frame(height: 1)
            
            Text("글자")
                .font(.system(size:30))
                .fontWeight(.heavy)
//                .padding(.bottom, 100)
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.red)
//                .padding(.vertical, 100)
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.yellow)
            
            Spacer()
                .frame(height: 50)
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.blue)
//
//            Spacer()
//            Spacer()
        }
        .frame(width: 300)
        .background(Color.green)
        //        .edgesIgnoringSafeArea(.all)
        
    }
}

struct MyVstack_Previews: PreviewProvider {
    static var previews: some View {
        MyVstack()
    }
}

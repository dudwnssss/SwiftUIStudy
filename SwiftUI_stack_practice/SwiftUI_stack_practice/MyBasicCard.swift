//
//  MyBasicCard.swift
//  SwiftUI_stack_practice
//
//  Created by 임영준 on 2023/02/25.
//

import SwiftUI

struct MyBasicCard: View {
    var body: some View {
        HStack(spacing: 20){

            Image(systemName: "flag.fill")
                .font(.system(size: 40))
                .foregroundColor(Color.white)
            
            
            VStack(alignment: .leading, spacing: 0 ){
                Divider().opacity(0)
//                Rectangle().frame(height: 0 )
                Text("유튭 라이트 버닝")
                    .fontWeight(.bold)
                    .font(.system(size:  25))                     .foregroundColor(Color.white)
                
                Spacer().frame(height: 5)
                 
                Text("8  PM ~ 10 PM")
                    .foregroundColor(Color.white)
 
            }
        }
        .padding(20)
        .background(Color.purple)
        .cornerRadius(20)
        
    }
}

struct MyBasicCard_Previews: PreviewProvider {
    static var previews: some View {
        MyBasicCard()
    }
}
 

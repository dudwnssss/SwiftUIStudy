//
//  MySmallerButton.swift
//  SwiftUI_ButtonStyle
//
//  Created by 임영준 on 2023/02/28.
//

import SwiftUI

struct MySmallerButtonStyle: ButtonStyle{
  
    var color : Color
    
    func makeBody(configuration: Configuration) -> some View {
        
        configuration
            .label
            .font(.system(size:20))
            .foregroundColor(Color.white)
            .padding()
            .background(color)
            .cornerRadius(20)
            .scaleEffect(configuration.isPressed ? 0.8 : 1.0)
            .opacity(configuration.isPressed ? 0.8 : 1.0)
     }
}

struct MySmallerButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button(action: {
            print("button clicked!")
        }, label: {
            Text("호호")
        }
        ).buttonStyle(MySmallerButtonStyle(color: .blue))
        
    }
}

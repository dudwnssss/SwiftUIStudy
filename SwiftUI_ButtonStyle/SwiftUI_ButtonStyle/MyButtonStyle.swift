//
//  MyButtonStyle.swift
//  SwiftUI_ButtonStyle
//
//  Created by 임영준 on 2023/02/28.
//

import SwiftUI

enum ButtonType {
    case tab
    case long
}

struct MyButtonStyle: ButtonStyle {
    
    var color : Color
    var type : ButtonType
    
    func makeBody(configuration: Configuration) -> some View {
        
        configuration
            .label
            .font(.system(size:20))
            .foregroundColor(Color.white)
            .padding()
            .background(color)
            .cornerRadius(20)
            .scaleEffect(configuration.isPressed ? 1.3 : 1.0)
            .onTapGesture {
                if (self.type == .tab){
                    let haptic = UIImpactFeedbackGenerator(style: .light)
                    haptic.impactOccurred()
                }
            }.onLongPressGesture {
                if (self.type == .long){
                    let haptic = UIImpactFeedbackGenerator(style: .heavy)
                    haptic.impactOccurred()
                }
            }
    }
}
    
    struct MyButtonStyle_Previews: PreviewProvider {
        static var previews: some View{
            Button(action: {
                print("button clicked!")
            }, label: {
                Text("호호")
            }
            ).buttonStyle(MyButtonStyle(color: Color.blue, type: .tab))
    }
}  

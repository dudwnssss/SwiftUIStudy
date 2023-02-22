//
//  ContentView.swift
//  SwiftUI_Text
//
//  Created by 임영준 on 2023/02/22.
//

import SwiftUI

struct ContentView: View {
    
    static let dateFormat: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "YYYY년_ M월_ d일_"
        formatter.dateStyle = .long
        return formatter
    }()
     
    
    var today = Date()
    
    var trueOrFalse : Bool = false
    
    var number : Int = 123
    
    var body: some View {
        
        
        VStack{
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,")
                .tracking(2) //글자 사이의 간격
            
            .font(.system(.body, design: .rounded))
            .fontWeight(.medium)
            .multilineTextAlignment(.leading)
            .lineLimit(nil)
            .lineSpacing(10) //글자 사이 간격
            .truncationMode(.tail)//글자 잘리는 위치
            .shadow(color: Color.red, radius:1.5, x: -10, y: 10
            )//그림자 효과
            .padding(.all, 20)
            .background(Color.yellow)
            .cornerRadius(10)
            
            .padding()
            .background(Color.green)
            .cornerRadius(20)
            
            .padding()
            
            Text("안녕하세요!!").background(Color.gray)
                .foregroundColor(Color.white)
            
            Text("오늘의 날짜입니다 : \(today, formatter: ContentView.dateFormat)")
            
            Text("참 혹은 거짓 : \(String(trueOrFalse))")
            
            Text("숫자입니다 : \(number)")
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

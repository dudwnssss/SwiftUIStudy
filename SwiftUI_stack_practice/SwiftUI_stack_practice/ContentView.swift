//
//  ContentView.swift
//  SwiftUI_stack_practice
//
//  Created by 임영준 on 2023/02/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        
        ZStack(alignment: .bottomTrailing ){
            VStack(alignment: .leading, spacing: 0 ){
                
                HStack{
                    Image(systemName: "line.horizontal.3")
                        .font(.largeTitle)
                    Spacer()
                    Image(systemName: "person.crop.circle.fill")
                        .font(.largeTitle)
                }
                .padding(  20 )
       
                
                Text("정대리 할 일목록 ")
                    .font(.system(size:40 ))
                    .fontWeight(.black)
                    .padding(.horizontal)
                 
                ScrollView{
                    VStack {
                        MyProjectCard()
                        MyBasicCard()
                        MyBasicCard()
                        MyBasicCard()
                        MyBasicCard()
                        MyBasicCard()
                        MyBasicCard()
                        MyBasicCard()
                        MyBasicCard()
                    }
                    .padding()
                }
            }

            
            Circle()
                .foregroundColor(Color.yellow)
                .frame(width: 60, height: 60 )
                .overlay(
                    Image(systemName: "plus")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                )
            
            
                .padding( 10 )
                .shadow(radius: 20 )
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

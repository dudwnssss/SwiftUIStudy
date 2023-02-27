//
//  MyGeometryReaderVstack.swift
//  SwiftUI_stack_practice
//
//  Created by 임영준 on 2023/02/27.
//

import SwiftUI

enum Index {
    case one, two, three
}

struct MyGeometryReaderVstack: View {
    
    @State var index : Index = .one
    
    var body: some View {
        
        
        GeometryReader{
            
            geometry in
            
            VStack(spacing: 0){
                
                Button(action:{
                    //버튼이 클릭되었을 때 로직
                    print("1번이 클릭되었습니다.")
                    withAnimation{
                        self.index = .one
                    }
                }){
                    
                    //버튼의 생김새
                    Text("1")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width: 100, height: geometry.size.height/3)
                        .padding(.horizontal, self.index == .one ? 50 : 0)
                        .foregroundColor(Color.white)
                        .background(Color.red)
                }
                
                Button(action:{
                    print("2번이 클릭되었습니다.")
                    withAnimation{
                        self.index = .two
                    }                }){
                    Text("2")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width: 100, height: geometry.size.height/3)
                        .padding(.horizontal, self.index == .two ? 50 : 0)
                        .foregroundColor(Color.white)
                        .background(Color.blue)
                }
                Button(action:{
                    //버튼이 클릭되었을 때 로직
                    print("3번이 클릭되었습니다.")
                    withAnimation{
                        self.index = .three
                    }

                }){
                    Text("3")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width: 100, height: geometry.size.height/3)
                        .padding(.horizontal, self.index == .three ? 50 : 0)
                        .foregroundColor(Color.white)
                    .background(Color.green)
                }
            }
        }
        .background(Color.yellow)
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct MyGeometryReaderVstack_Previews: PreviewProvider {
    static var previews: some View {
        MyGeometryReaderVstack()
    }
}

//
//  ContentView.swift
//  SwiftUI_stack_practice
//
//  Created by 임영준 on 2023/02/24.
//

import SwiftUI

struct ContentView: View {
    @State var isNavigationBarHidden : Bool = false

    var body: some View {
        NavigationView{
            ZStack(alignment: .bottomTrailing ){
                VStack(alignment: .leading, spacing: 0 ){
                    
                    HStack{
                        
                        NavigationLink(destination: MyList(isNavigationBarHidden:  self.$isNavigationBarHidden)){
                            Image(systemName: "line.horizontal.3")
                                .font(.largeTitle)
                                .foregroundColor(Color.black)
                        }
                        
                        Spacer()
                        NavigationLink(destination: MyProfileView(isNavigationBarHidden: self.$isNavigationBarHidden)){
                            Image(systemName: "person.crop.circle.fill")
                                .font(.largeTitle)
                                .foregroundColor(.black)
                        }

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
                            MyCard(icon: "tray.fill", title: " ", start: "10 AM", end: "11 AM", bgColor: Color.blue)
                            MyCard(icon: "tray.fill", title: "영상 다시보기", start: "10 PM", end: "11 AM", bgColor: Color.orange)
                            MyCard(icon: "tray.fill", title: "마트 장보기", start: "10 AM",  end: "11 AM", bgColor: Color.green)
                            
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
            }//Zstack
            .navigationTitle("뒤로가기")
            .navigationBarHidden(self.isNavigationBarHidden)
            .onAppear{
                self.isNavigationBarHidden = true
            }        }//NavigationView
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
 

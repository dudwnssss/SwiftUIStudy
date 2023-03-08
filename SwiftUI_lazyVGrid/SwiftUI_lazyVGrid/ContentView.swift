//
//  ContentView.swift
//  SwiftUI_lazyVGrid
//
//  Created by 임영준 on 2023/03/06.
//

import SwiftUI

struct MyModel : Identifiable {
    let id = UUID()
    let title: String
    let content: String
}

extension MyModel {
    static var dummyDataArray: [MyModel]{
        (1...2000).map{(number: Int) in
            MyModel(title: "타이틀: \(number)", content: "컨텐트 \(number)")
        }
    }
}

struct ContentView: View {
    
    var dummyDataArray = MyModel.dummyDataArray
    
    var body: some View {
        
        ScrollView{
            
            // lazy vertical grid view
            // column은 horizontal 아이템 레이아웃을 설정하는 부분
            // 그리드 아이템 옵션 3개
            // .fixed 고정
            // .adaptive 여러개 채우기 - 계산해서 분할로 채우기
            // .flexible 하나만 채우기 - 계산해서 분할로 채우기
            LazyVGrid(columns: [GridItem(.fixed(100)),
                                GridItem(.adaptive(minimum: 50)),
                                GridItem(.flexible(minimum: 50))], spacing: 20) { 
                
                ForEach(dummyDataArray, content:  {(dataItem: MyModel) in
                    Rectangle().foregroundColor(.blue).frame(height: 120)
                        .overlay(
                            Text("\(dataItem.title)")
                        )
                        
                })
            }
        }
        
    }
    
}
            
        
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

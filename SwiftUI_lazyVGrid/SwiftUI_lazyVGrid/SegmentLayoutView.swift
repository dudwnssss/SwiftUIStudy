//
//  SegmentLayoutView.swift
//  SwiftUI_lazyVGrid
//
//  Created by 임영준 on 2023/03/06.
//

import SwiftUI

enum LayoutType: CaseIterable{
    case table
    case grid
    case tripple
}

extension LayoutType {
    // 레이아웃 타입에 대한 컬럼이 자동으로 설정되도록 한다.
    var columns : [GridItem]{
        switch self {
        case .table:
            return [GridItem(.flexible())]
        case .grid
            return [GridItem(.flexible())]
        }
    }
}

struct SegmentLayoutView: View {
    
    @State var selectedLayoutType: LayoutType = .table
    
    var body: some View {
        VStack{
            Picker(selection: $selectedLayoutType,  label: Text("레이아웃 타입"), content: {
                ForEach(LayoutType.allCases, id: \.self, content: { layoutType in
                    switch layoutType {
                    case .table:
                        Image(systemName: "list.dash")
                    case .grid:
                        Image(systemName: "square.grid.2x2.fill")
                    case .tripple:
                        Image(systemName: "circle.grid.3x3.fill")

                    }
                })
                
            }).pickerStyle(.segmented)
            //내용물
            ScrollView{
                LazyVGrid(columns: <#T##[GridItem]#>, content: <#T##() -> _#>)
            }
            
        }
    }
}

struct SegmentLayoutView_Previews: PreviewProvider {
    static var previews: some View {
        SegmentLayoutView()
    }
}

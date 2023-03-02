//
//  ContentView.swift
//  SwiftUI_picker
//
//  Created by 임영준 on 2023/03/02.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectionValue = 0
    
    let myColorArray = ["레드", "그린", "블루"]
    
    func changeColor(index: Int) -> Color{
        switch index{
        case 0:
            return Color.red
        case 1:
            return Color.green
        case 2:
            return Color.blue
        default:
            return Color.red
        }
    }
    
    var body: some View {
        
        VStack(alignment: .center){
            
            
            Circle()
                .foregroundColor(changeColor(index: selectionValue))
                .frame(width: 50, height: 50)
            
            
            
            Text("선택된 값: \(selectionValue)")
            Text("선택된 색깔: \(myColorArray[selectionValue])")
            
            Picker(selection: $selectionValue,
                   label: Text(""),
                   content: {
                Text("레드").tag(0)
                Text("그린").tag(1)
                Text("블루").tag(2)
            })
            .pickerStyle(SegmentedPickerStyle())

            
            Picker(selection: $selectionValue,
                   label: Text(""),
                   content: {
                Text("레드").tag(0)
                Text("그린").tag(1)
                Text("블루").tag(2)
            }).frame(width: 80, height: 100)
                .clipped()
                .padding()
                .border(changeColor(index: selectionValue), width: 10)
            
            
        }
        .padding(.horizontal, 50)
        
        

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  TodosView.swift
//  SwiftUI_deeplink
//
//  Created by 임영준 on 2023/03/02.
//

import SwiftUI

struct TodoItem : Identifiable, Hashable {
    var id : UUID
    var title : String
}

func prepareData() -> [TodoItem]{
    print("prepareDate() called")
    
    var newList = [TodoItem]()
    
    for i in 0...20 {
        let newTodo = TodoItem(id: UUID(), title: "내 할일 \(i)")
        print("newTodo.id: \(newTodo.id) / title: \(newTodo.title)")
        newList.append(newTodo)
    }
    return newList
}

struct TodosView: View {
    
    @State var todoItems = [TodoItem]()
    @State var activeUUID: UUID?
    
    //생성자 메소드
    init(){
        _todoItems = State(initialValue: prepareData())
        
    }
    
    
    var body: some View{
        NavigationView {
            List(todoItems) {todoItem in
                NavigationLink(
                    destination: Text("\(todoItem.title)"),
                    tag: todoItem.id,
                    selection: $activeUUID,
                    label: {
                        Text("\(todoItem.title)")
                    })
            }
            .navigationTitle(Text("할 일 목록"))
            .onOpenURL(perform: { url in
                if case .todoItem(let id) = url.detailPage {
                    print("넘어온 id: \(id)")
                    activeUUID = id
                }
            })
        }
        }
    }
            
struct TodosView_Previews: PreviewProvider {
    static var previews: some View {
        TodosView()
    }
}

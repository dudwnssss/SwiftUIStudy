//
//  MyNavigationView.swift
//  SwiftUI_stack_practice
//
//  Created by 임영준 on 2023/02/27.
//

import SwiftUI

struct MyNavigationView: View {
    var body: some View {
        
        NavigationView{
            MyList()
                .navigationBarTitle("안녕하세요!", displayMode: .automatic)
                .navigationBarItems(leading: Button(action:{
                    print("호호")
                }){
                    Text("호호")
                }
                                    
                                    , trailing: NavigationLink(destination: Text("넘어온 화면입니다. ")
                                                              ){
                    Image(systemName:  "bookmark.fill" )
                        .font(.system(size: 25))
                        .foregroundColor(Color.black)
                }
                )
        }
             }
}

struct MyNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        MyNavigationView()
    }
}

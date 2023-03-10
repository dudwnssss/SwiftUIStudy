//
//  SwiftUI_deeplinkApp.swift
//  SwiftUI_deeplink
//
//  Created by 임영준 on 2023/03/02.
//

import SwiftUI


// 어떤 탭이 선택되었는지
enum TabIdentifier : Hashable{
    case todos
    case profile
}

// 어떤 페이지를 보여줘야하는지
enum PageIdentifier: Hashable {
    case todoItem(id: UUID)
}

@main
struct SwiftUI_deeplinkApp: App {
    
    @State var selectedTab = TabIdentifier.todos
    
    var body: some Scene {
        WindowGroup {
            TabView(selection: $selectedTab, content: {
                TodosView().tabItem{
                    VStack{
                        Image(systemName: "list.bullet")
                        Text("할일목록")
                    }
                }
                .tag(TabIdentifier.todos)
                ProfileView().tabItem{
                    VStack{
                              Image(systemName: "person.circle.fill")
                        Text("할일목록")
                    }
                }.tag(TabIdentifier.profile)
                
            })
            .onOpenURL(perform: {
                url in
                //열려야 하는 url 처리
                guard let tabId = url.tabIdentifier else {return}
                selectedTab = tabId
            })
        }
    }
}

struct MyPreviewProvider_Previews: PreviewProvider {
    static var previews: some View {
        Text("Hello, world!")
    }
}



extension URL {
    //info에서 추가한 딥링크가 들어왔는지 여부
    //딥링크 추가공부
    //딥링크 추추가
    
    var isDeeplink : Bool{
        return scheme == "deeplink-swiftui"
    }
    
    //url 들어오는 것으로 어떤 타입의 탭을 보여줘야 하는지 가져오기
    var tabIdentifier: TabIdentifier? {
        guard isDeeplink else {return nil}
        
        //deeplink-swiftui://hohoho
        switch host {
        case "todos" :
            return .todos
        case "profile" :
            return .profile
        default:
            return nil
        }
    }
    
    var detailPage: PageIdentifier? {
        
        // deeplink - swiftui://hohoho/great
        
        guard let tabId = tabIdentifier,
              pathComponents.count > 1,
              let uuid = UUID(uuidString: pathComponents[1])
        else {
            return nil
        }
        
        switch tabId {
        case .todos:
            return .todoItem(id: uuid)
        default:
            return nil
        }
        
    }
    
}

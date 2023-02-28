//
//  SwiftUI_stack_practiceApp.swift
//  SwiftUI_stack_practice
//
//  Created by 임영준 on 2023/02/24.
//

import SwiftUI

@main
struct SwiftUI_stack_practiceApp: App {
    var body: some Scene {
        WindowGroup {
            MyCustomTabView(tabIndex: .home)
        }
    }
}

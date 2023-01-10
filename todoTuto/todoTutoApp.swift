//
//  todoTutoApp.swift
//  todoTuto
//
//  Created by WonDongHyun on 2022/12/28.
//

import SwiftUI

@main
struct todoTutoApp: App {
    
    
    @StateObject var todosVM: TodosVM = TodosVM()
    
    var body: some Scene {
        WindowGroup {
            TabView{ //탭뷰는 UiKit의 탭 바 컨트롤러
                
                
                

                TodosView() //만든 SwiftUI 기반 뷰를 가져옴 
                .tabItem { //각 탭 아이템에 대한 설정
                        Image(systemName: "1.square.fill")
                        Text("SwiftUI")
                    }
                
                MainVC.instantiate() //뷰컨트롤러를 가져옴.
                    .getRepresentable() //아까 선언한 getRepresentable으로 SwiftUI View를 또 가져옴. 겉으로는 보기에는 SwiftUI이지만, 속은 스토리보드임.
                    .tabItem {
                        Image(systemName: "2.square.fill")
                        Text("UIKit")
                    }
                
            }
            
        }
    }
}

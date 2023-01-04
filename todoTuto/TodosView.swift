//
//  TodosView.swift
//  todoTuto
//
//  Created by WonDongHyun on 2023/01/04.
//

import Foundation

import SwiftUI// 스위프트UI는 Struct 기반


struct TodosView : View {
    
    var body: some View{
        
        VStack{ //일반적으로 vstack으로 한번 감쌈
            
            Text("TodosView / page: 0.")
            Text("선택된 할 일 : []")
            
            HStack{
                Button(action: {}, label:{Text("클로저")})
                    .buttonStyle(MyDefaultBtnStyle()) //스타일에서 만든걸 가져옴
                Button(action: {}, label:{Text("Rx")})
                    .buttonStyle(MyDefaultBtnStyle(textcolor: .blue, bgcolor: .yellow))
                Button(action: {}, label:{Text("콤바인")})
                Button(action: {}, label:{Text("Async")})

            } //버튼의 형태.
            
            Text("Async 변환 액션들")
            
            HStack{
                Button(action: {}, label:{Text("클로저 -> Async")})
                Button(action: {}, label:{Text("Rx->Async")})
                Button(action: {}, label:{Text("콤바인->Async")})
                

            } //버튼의 형태.
            
            HStack{ //수평 스택
                Button(action: {}, label:{Text("초기화")})
                Button(action: {}, label:{Text("선택된 할 일들 삭제")})
                Button(action: {}, label:{Text("할 일 추가")})
                

            } //버튼의 형태.


        
            Circle()
            
                .background(Color.yellow)
                .padding(20)
                .background(Color.blue)
            Text("Todos 뷰이다.")
            
        }
    }
}



struct TodosView_Previews: PreviewProvider{
    static var previews: some View{
        TodosView()
    }
}


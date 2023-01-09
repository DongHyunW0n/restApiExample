//
//  TodosView.swift
//  todoTuto
//
//  Created by WonDongHyun on 2023/01/04.
//

import Foundation

import SwiftUI// 스위프트UI는 Struct 기반


struct TodosView : View {
    //팁 : 옵션 + 커맨드 + 화살표 왼쪽 오른쪽으로 닫고열고 가능
    var body: some View{ //바디라는 뷰 안에 들어가는 친구들이 화면에 보임.
        
        VStack(alignment: .leading){ //일반적으로 vstack으로 한번 감쌈 , Vstack은 10개까지 밖에 못놓음
            
            
            
            headerSet
           
            UISearchBarWrapper() //따로 만든 서치바를 가져옴
            
            Spacer() //아래쪽에 공간을 줘서 스프링처럼 위로 밀어줌.
        
            List{
                
               TodoRow()
                TodoRow()
                TodoRow()
                TodoRow()
                TodoRow()
                
                
                
            }.listStyle(.plain)
            
           
            
        }
    }
    
    fileprivate var headerSet : some View {
        Group{
            topHeader
            secondHeader
        } .padding(.horizontal,10) //그룹으로 묶어서 패딩 
       
        
    }
    
    //첫번째 헤더를 여기다가 넣어버림.
    fileprivate var topHeader : some View{
        Group{
            Text("TodosView / page: 0.")
            Text("선택된 할 일 : []")
            
            HStack{
                Button(action: {}, label:{Text("클로저")})
                    .buttonStyle(MyDefaultBtnStyle()) //스타일에서 만든걸 가져옴 //초기설정값으로
                Button(action: {}, label:{Text("Rx")})
                    .buttonStyle(MyDefaultBtnStyle())
                Button(action: {}, label:{Text("콤바인")})
                    .buttonStyle(MyDefaultBtnStyle())
                
                Button(action: {}, label:{Text("Async")
                        //라인리미트를 통해 버튼의 텍스트를 1줄로 제한 , 미니멈스케일팩터를 통해 글자의 스케일을 작게
                    
                })
                .buttonStyle(MyDefaultBtnStyle())
                
            } //버튼의 형태.
        }
    }
    
    
    //두번째 헤더들 여기다가 넣어버림.
    fileprivate var secondHeader : some View{
        
        Group{
            Text("Async 변환 액션들")
            
            HStack{
                Button(action: {}, label:{Text("클로저 -> Async")})
                    .buttonStyle(MyDefaultBtnStyle())
                
                Button(action: {}, label:{Text("Rx->Async")})
                    .buttonStyle(MyDefaultBtnStyle())
                
                Button(action: {}, label:{Text("콤바인->Async")})
                    .buttonStyle(MyDefaultBtnStyle())
                
                
                
            } //버튼의 형태.
            
            HStack{ //수평 스택
                Button(action: {}, label:{Text("초기화")})
                    .buttonStyle(MyDefaultBtnStyle(bgColor: .purple))
                
                Button(action: {}, label:{Text("선택된 할 일들 삭제")})
                    .buttonStyle(MyDefaultBtnStyle(bgColor:  .black))
                
                Button(action: {}, label:{Text("할 일 추가")})
                    .buttonStyle(MyDefaultBtnStyle(bgColor:  .gray))
                
                
                
            } //버튼의 형태.
        }
    }
}


struct TodosView_Previews: PreviewProvider{
    static var previews: some View{
        TodosView()
    }
}


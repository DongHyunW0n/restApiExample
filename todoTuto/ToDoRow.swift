//
//  ToDoRow.swift
//  todoTuto
//
//  Created by WonDongHyun on 2023/01/06.
//

import Foundation
import SwiftUI


struct TodoRow :  View {
    
    
    @State var isSelected : Bool = false
    
    var body : some View{
        
        HStack(alignment: .top){ //위로 붙게
            VStack(alignment: .leading){
                Text("id : 123 / 완료여부 : 미완료")
                Text("오늘도 놀자")
                    
                
               
            }.frame(maxWidth : .infinity) //크기가 늘어날 수 있는만큼 늘어나게 설정
            
            VStack(alignment: .trailing){ //스위치와 묶어주기 위해서 Vstack으로 진행. 그리고 vStack안에서 우측으로 붙게 하기 위해 .trailing 사용
                
                
                actionButtons
                Toggle(isOn: $isSelected) {
                    EmptyView()
                }
                    .frame(width: 80)
                
            }
           
            
            
            
        }
            .frame(maxWidth : .infinity) //크기가 늘어날 수 있는만큼 늘어나게 설정
        
        
        
    }
    
    
    fileprivate var actionButtons : some View{
        
        
        HStack{
            Button(action: {}, label: {
                
                Text("수정")
            })
            .buttonStyle(MyDefaultBtnStyle())
            .frame(width: 80)
            
            
            Button(action: {}, label: {
                
                Text("삭제")
            })
            .buttonStyle(MyDefaultBtnStyle(bgColor: .purple))
            .frame(width: 80)

            
            
        }
        
    }
    
}


struct TodoRow_Previews: PreviewProvider{
    static var previews: some View{
        TodoRow()
    }
}

//
//  Button+Style.swift
//  todoTuto
//
//  Created by WonDongHyun on 2023/01/04.
//

import Foundation
import SwiftUI

struct MyDefaultBtnStyle: ButtonStyle {
    //내가 커스텀을 할 수 있게 해놓는게 편함.
    let bgColor : Color
    let textColor : Color
    
    
    init(bgColor: Color = Color.blue,
         textColor: Color = Color.white)
    {
        self.bgColor = bgColor //값이 없으면 기본값은 블루
        self.textColor = textColor //값이 없으면 기본값은 화이트
    }
  func makeBody(configuration: Configuration) -> some View {
    HStack {
      Spacer()
        configuration.label
            .foregroundColor(textColor)
            .lineLimit(2)
            .minimumScaleFactor(0.7)
      Spacer()
    }
    .padding()
    .background(bgColor.cornerRadius(8))
    .scaleEffect(configuration.isPressed ? 0.95 : 1) // 버튼이 눌러졌을때 약간 들어가는 효과
  }
}



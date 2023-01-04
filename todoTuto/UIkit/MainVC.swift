//
//  MainVC.swift
//  todoTuto
//
//  Created by WonDongHyun on 2022/12/28.
//

import Foundation
import UIKit
import SwiftUI

class MainVC: UIViewController{
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .systemYellow
    }
}


extension MainVC {
    
    private struct VCRepresentable : UIViewControllerRepresentable{ //UIkit을 대신하는 뷰 구조체를 선언
        
        
        let mainVC : MainVC
        
        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
            //swiftUI에서는 값이 변경되면 업데이트를 해줘야함. 그런데 여기서는 안할거니까 비워둠.
        }
        func makeUIViewController(context: Context) -> some UIViewController {
            return mainVC //뷰컨트롤러 이름을 반환하면,그걸 속에 몰래 숨긴 ViewControllerRepresentable이라는 SwiftUI가 나옴.
        }
    }
    
    func getRepresentable() -> some View{ //스위프트UI뷰를 가져옴.
        VCRepresentable(mainVC: self) // 구조체이기때문에 자동으로 가져오고, self로 자기 자신을 줌. 
        
    }
}

extension MainVC : StoryBoarded {}//MainVC는 스토리보디드라는 프로토콜을 준수함.


protocol StoryBoarded { // 프로토콜 스토리보디드를 선언
    
    static func instantiate(_ stoyboardName: String?) -> Self
}


extension StoryBoarded{ //위에서 선언한 스토리보디드를 밑에서 정의
    static func instantiate(_ storyboardName: String? = nil) -> Self  { //스토리보드 이름을 가져와야하고, 우선 기본값은 nil으로 설정 합니다.
        
        
        let name = storyboardName ?? String(describing: self) //스토리보드 네임이 들어온게 없다면, 현재 보고 있는 클래스 자체를 문자열로 만들어서 name에 넣어줌.
        let storyboard = UIStoryboard(name: name, bundle: Bundle.main) //@번들이란@? 왼쪽에 실행 가능한 코드와 이것저것 모아둔 디렉토리를 의미함. 그래서 번들에서 메인을 가져옴.
        
        return storyboard.instantiateViewController(withIdentifier: String(describing: self)) as! Self // 스토리보디드 프로톨을 준수하고 있는 자기 자신을 리턴함. MainVC 스토리 보드에서 식별자를 자기 자신으로 설정한 이유임.
    }

}




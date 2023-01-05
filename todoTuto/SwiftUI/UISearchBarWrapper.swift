//
//  UISearchBarWrapper.swift
//  todoTuto
//
//  Created by WonDongHyun on 2023/01/06.
//

import Foundation
import SwiftUI
import UIKit
//서치바를 사용하지 못하므로 

struct UISearchBarWrapper : UIViewRepresentable{
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
    func makeUIView(context: Context) -> some UIView {
        return UISearchBar()
    }
}

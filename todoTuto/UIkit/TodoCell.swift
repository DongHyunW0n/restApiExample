//
//  TodoCell.swift
//  todoTuto
//
//  Created by WonDongHyun on 2023/01/02.
//

import Foundation
import UIKit


class ToDoCell : UITableViewCell{
    
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var contentsLabel: UILabel!
    
    @IBOutlet weak var selectionSwitch: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    
    @IBAction func onEditButtonClicked(_ sender: UIButton) {
        
        
    }
    
    @IBAction func onDeleteButtonClicked(_ sender: UIButton) {
        
        
        
    }
    
}

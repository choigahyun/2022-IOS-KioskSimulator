//
//  VanilaSyrupCell.swift
//  KioskSimulator
//
//  Created by 김정현 on 2022/08/01.
//

import UIKit

class VanilaSyrupCell: UITableViewCell {
    @IBOutlet weak var vanilaAddBtn: UIButton!
    
    @IBAction func tapVanilaAddBtn(_ sender: UIButton) {
        if vanilaAddBtn.layer.backgroundColor != UIColor.systemBlue.cgColor {
            onBtn(button: vanilaAddBtn)
        } else {
            offBtn(button: vanilaAddBtn)
        }
    }
}

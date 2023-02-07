//
//  HoticeCell.swift
//  KioskSimulator
//
//  Created by 김정현 on 2022/07/31.
//

import UIKit

func onBtn(button: UIButton) {
    button.layer.backgroundColor = UIColor.systemBlue.cgColor
    button.layer.cornerRadius = 10
    button.tintColor = UIColor.white
}
func offBtn(button: UIButton) {
    button.layer.backgroundColor = UIColor.white.cgColor
    button.tintColor = UIColor.opaqueSeparator
}

class HoticeCell: UITableViewCell {
    @IBOutlet weak var hotBtn: UIButton!
    @IBOutlet weak var iceBtn: UIButton!
    
    @IBAction func tapHotBtn(_ sender: UIButton) {
        if hotBtn.layer.backgroundColor != UIColor.systemBlue.cgColor { // HOT off일 때
            // HOT on
            onBtn(button: hotBtn)
            currentMenuOption.hotice_option = "HOT"
            
            // ICE off
            offBtn(button: iceBtn)
        } else { // HOT on일 때
            // HOT off
            offBtn(button: hotBtn)
            
            // ICE on
            onBtn(button: iceBtn)
            currentMenuOption.hotice_option = "ICE"
        }
    }
    
    
    @IBAction func tapIceBtn(_ sender: UIButton) {
        if iceBtn.layer.backgroundColor != UIColor.systemBlue.cgColor { // ICE off
            // ICE on
            onBtn(button: iceBtn)
            currentMenuOption.hotice_option = "ICE"
            
            // HOT off
            offBtn(button: hotBtn)
            
        } else { // ICE on
            // ICE off
            offBtn(button: iceBtn)
            
            // HOT on
            onBtn(button: hotBtn)
            currentMenuOption.hotice_option = "HOT"
        }
    }
}



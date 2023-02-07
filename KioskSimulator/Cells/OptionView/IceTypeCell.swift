//
//  IceTypeCell.swift
//  KioskSimulator
//
//  Created by 김정현 on 2022/07/31.
//

import UIKit

class IceTypeCell: UITableViewCell {
    @IBOutlet weak var bigIceBtn: UIButton!
    @IBOutlet weak var smallIceBtn: UIButton!
    
    @IBAction func tapBigIceBtn(_ sender: Any) {
        if currentMenuOption.hotice_option == "HOT" {
            
            
            offBtn(button: bigIceBtn)
            offBtn(button: smallIceBtn)
        } else {
            if bigIceBtn.layer.backgroundColor != UIColor.systemBlue.cgColor { // 각얼음 off
                // 각얼음 on
                onBtn(button: bigIceBtn)
                
                // 간얼음 off
                offBtn(button: smallIceBtn)
            } else { // 각얼음 on
                // 각얼음 off
                offBtn(button: bigIceBtn)
                
                // 간얼음 on
                onBtn(button: smallIceBtn)
            }
        }
    }
    
    @IBAction func tapSmallIceBtn(_ sender: UIButton) {
        if currentMenuOption.hotice_option == "HOT" {
            offBtn(button: bigIceBtn)
            offBtn(button: smallIceBtn)
            
        } else {
            if smallIceBtn.layer.backgroundColor != UIColor.systemBlue.cgColor { // 간얼음 off
                // 간얼음 on
                onBtn(button: smallIceBtn)
                
                // 각얼음 off
                offBtn(button: bigIceBtn)
            } else { // 간얼음 on
                // 간얼음 off
                offBtn(button: smallIceBtn)
                
                // 각얼음 on
                onBtn(button: bigIceBtn)
            }
        }
    }
}

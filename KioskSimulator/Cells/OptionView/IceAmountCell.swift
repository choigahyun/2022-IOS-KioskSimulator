//
//  IceAmountCell.swift
//  KioskSimulator
//
//  Created by 김정현 on 2022/07/31.
//

import UIKit

class IceAmountCell: UITableViewCell {
    @IBOutlet weak var noIceBtn: UIButton!
    @IBOutlet weak var lessIceBtn: UIButton!
    @IBOutlet weak var moreIceBtn: UIButton!
    
    @IBAction func tapNoIceBtn(_ sender: UIButton) {
        if noIceBtn.layer.backgroundColor != UIColor.systemBlue.cgColor { // 얼음없음 off
            // 얼음 없음 on
            onBtn(button: noIceBtn)
            
            // 얼음적게 off
            offBtn(button: lessIceBtn)
            
            // 얼음많이 off
            offBtn(button: moreIceBtn)
        } else { // 얼음없음 on
            // 얼음 없음 off
            offBtn(button: noIceBtn)
        }
    }
    
    @IBAction func tapLessIceBtn(_ sender: UIButton) {
        if lessIceBtn.layer.backgroundColor != UIColor.systemBlue.cgColor { // 얼음적게 off
            // 얼음적게 on
            onBtn(button: lessIceBtn)
            
            // 얼음없음 off
            offBtn(button: noIceBtn)
            
            // 얼음많이 off
            offBtn(button: moreIceBtn)
        } else { // 얼음적게 on
            // 얼음적게 off
            offBtn(button: lessIceBtn)
        }
    }
    
    @IBAction func tapMoreIceBtn(_ sender: UIButton) {
        if moreIceBtn.layer.backgroundColor != UIColor.systemBlue.cgColor { // 얼음많이 off
            // 얼음많이 on
            onBtn(button: moreIceBtn)
            
            // 얼음없음 off
            offBtn(button: noIceBtn)
            
            // 얼음적게 off
            offBtn(button: lessIceBtn)
        } else { // 얼음많이 on
            // 얼음많이 off
            offBtn(button: moreIceBtn)
        }
    }
    
}

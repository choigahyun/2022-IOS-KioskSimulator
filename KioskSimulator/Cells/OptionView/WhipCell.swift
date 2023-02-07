//
//  WhipCell.swift
//  KioskSimulator
//
//  Created by 김정현 on 2022/07/31.
//

import UIKit

class WhipCell: UITableViewCell {
    @IBOutlet weak var noWhipBtn: UIButton!
    @IBOutlet weak var lessWhipBtn: UIButton!
    @IBOutlet weak var yesWhipBtn: UIButton!
    
    @IBAction func tapNoWhipBtn(_ sender: UIButton) {
        if noWhipBtn.layer.backgroundColor != UIColor.systemBlue.cgColor { // 휘핑없음 off
            // 휘핑없음 on
            onBtn(button: noWhipBtn)
            
            // 휘핑적게 off
            offBtn(button: lessWhipBtn)
            
            // 휘핑있음 off
            offBtn(button: yesWhipBtn)
        } else { // 휘핑없음 on
            // 휘핑없음 off
            offBtn(button: noWhipBtn)
            
            // 휘핑있음 on
            onBtn(button: yesWhipBtn)
        }
    }
    
    @IBAction func tapLessWhipBtn(_ sender: UIButton) {
        if lessWhipBtn.layer.backgroundColor != UIColor.systemBlue.cgColor {
            onBtn(button: lessWhipBtn)
                
            offBtn(button: noWhipBtn)
            
            offBtn(button: yesWhipBtn)
        } else {
            offBtn(button: lessWhipBtn)
            
            onBtn(button: yesWhipBtn)
        }
    }
    
    @IBAction func tapYesWhipBtn(_ sender: UIButton) {
        if yesWhipBtn.layer.backgroundColor != UIColor.systemBlue.cgColor {
            onBtn(button: yesWhipBtn)
            
            offBtn(button: noWhipBtn)
            
            offBtn(button: lessWhipBtn)
        }
    }
}

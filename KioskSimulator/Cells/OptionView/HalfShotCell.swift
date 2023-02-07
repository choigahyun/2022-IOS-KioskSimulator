//
//  HalfShotCell.swift
//  KioskSimulator
//
//  Created by 김정현 on 2022/07/31.
//

import UIKit

class HalfShotCell: UITableViewCell {
    @IBOutlet weak var halfShotBtn: UIButton!
    
    @IBAction func tapHalfShotBtn(_ sender: UIButton) {
        if halfShotBtn.layer.backgroundColor != UIColor.systemBlue.cgColor {
            onBtn(button: halfShotBtn)
        } else {
            offBtn(button: halfShotBtn)
        }
    }
}

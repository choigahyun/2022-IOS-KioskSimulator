//
//  HazelnutSyrupCell.swift
//  KioskSimulator
//
//  Created by 김정현 on 2022/08/01.
//

import UIKit

class HazelnutSyrupCell: UITableViewCell {
    @IBOutlet weak var hazelnutSyrupAddBtn: UIButton!
    
    @IBAction func tapHazelnutSyrupAddBtn(_ sender: UIButton) {
        if hazelnutSyrupAddBtn.layer.backgroundColor != UIColor.systemBlue.cgColor {
            onBtn(button: hazelnutSyrupAddBtn)
        } else {
            offBtn(button: hazelnutSyrupAddBtn)
        }
    }
}

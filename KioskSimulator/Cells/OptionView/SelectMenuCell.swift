//
//  SelectMenuCell.swift
//  KioskSimulator
//
//  Created by 김정현 on 2022/07/28.
//

import UIKit

class SelectMenuCell: UITableViewCell {
    
    @IBOutlet weak var menuImage: UIImageView!
    @IBOutlet weak var menuLabel: UILabel!
    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    var amount: Int = 0
    
    @IBAction func menuMinusBtn(_ sender: UIButton) {
        if amount > 0 {
            amount -= 1
            amountLabel.text = "\(amount)"
        }
    }
    @IBAction func menuPlusBtn(_ sender: UIButton) {
        amount += 1
        amountLabel.text = "\(amount)"
    }
}

//
//  PearlCell.swift
//  KioskSimulator
//
//  Created by 김정현 on 2022/08/01.
//

import UIKit

class PearlCell: UITableViewCell {
    @IBOutlet weak var minusBtn: UIButton!
    @IBOutlet weak var plusBtn: UIButton!
    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    var amount: Int = 0
    
    @IBAction func tapMinusBtn(_ sender: UIButton) {
        if amount > 0 {
            amount -= 1
            amountLabel.text = "\(amount)"
        }
    }
    
    @IBAction func tapPlusBtn(_ sender: UIButton) {
        if amount < 10 {
            amount += 1
            amountLabel.text = "\(amount)"
        }
    }
}

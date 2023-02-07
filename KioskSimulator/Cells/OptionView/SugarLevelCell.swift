//
//  SugarLevelCell.swift
//  KioskSimulator
//
//  Created by 김정현 on 2022/07/31.
//

import UIKit

class SugarLevelCell: UITableViewCell {
    @IBOutlet weak var lessSugarBtn: UIButton!
    @IBOutlet weak var moreSugarBtn: UIButton!
    
    @IBAction func tapLessSugarBtn(_ sender: UIButton) {
        if lessSugarBtn.layer.backgroundColor != UIColor.systemBlue.cgColor { // 덜달게 off
            // 덜달게 on
            onBtn(button: lessSugarBtn)
            
            // 더달게 off
            offBtn(button: moreSugarBtn)
        } else { // 덜달게 on
            // 덜달게 off
            offBtn(button: lessSugarBtn)
        }
    }
    
    @IBAction func tapMoreSugarBtn(_ sender: UIButton) {
        if moreSugarBtn.layer.backgroundColor != UIColor.systemBlue.cgColor { // 더달게 off
            // 더달게 on
            onBtn(button: moreSugarBtn)
            
            // 덜달게 off
            offBtn(button: lessSugarBtn)
        } else { // 덜달게 on
            // 더달게 off
            offBtn(button: moreSugarBtn)
        }
    }
    
}

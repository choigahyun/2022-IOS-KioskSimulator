//
//  RecieptViewController.swift
//  KioskSimulator
//
//  Created by 김정현 on 2022/08/02.
//

import UIKit

class RecieptViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func goHome(_ sender: UIButton) {
        guard let presentingVC = self.presentingViewController as? UINavigationController else { return }
                dismiss(animated: true) {
                        presentingVC.popToRootViewController(animated: true)
                }
    }
        
}

//
//  SelectMenuViewController.swift
//  KioskSimulator
//
//  Created by 김정현 on 2022/07/26.
//

import UIKit

var currentMenuOption = OptionData(1, "ICE", "간얼음", "기본", "기본", "기본", "-1","기본", "기본", 0, pearl_option: 0)

class OptionViewController: UIViewController {
    
    @IBOutlet weak var optionTableView: UITableView!
    
    
    let sections: [String] = ["", "무료 옵션", "유료 옵션"]
    var receiveData = MenuData("", "", 0, "", coffee_option_basic) // default
    var menuAmount: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentMenuOption = receiveData.option
    }
    
    func receiveData(_ data: MenuData){
        receiveData = data
    }
    
    
    @IBAction func doCancel(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func doCart(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}


extension OptionViewController: UITableViewDataSource {
    // Returns the number of sections
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    // Returns the title of the section
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if receiveData.option.type == 7 {
            return ""
        } else {
            return sections[section]
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let opt = currentMenuOption
        
        switch section {
        case 0:
            switch opt.type {
            case 1, 2, 6:
                return 2
            default:
                return 1
            }
        case 1:
            switch opt.type {
            case 1:
                return 4
            case 2:
                return 5
            case 3, 6, 7:
                return 3
            case 4:
                return 1
            case 5:
                return 2
            default:
                return 0
            }
        case 2:
            switch opt.type {
            case 1, 2:
                return 4
            default:
                return 1
            }
        default:
            return 0
        }
    }
    
    // Set a value in Cell.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let opt = currentMenuOption
        
        switch indexPath.section {
        case 0:
            switch indexPath.row {
            case 0:
                let cell = tableView.dequeueReusableCell(withIdentifier: "selectMenuCell", for: indexPath) as! SelectMenuCell
                
                cell.menuImage.image = UIImage(named: receiveData.menu_image)
                cell.menuLabel.text = receiveData.menu
                cell.priceLabel.text = "\(receiveData.price!)"
                
                return cell
            case 1:
                let cell = tableView.dequeueReusableCell(withIdentifier: "hoticeCell", for: indexPath) as! HoticeCell
                
                if opt.hotice_option == "HOT" {
                    onBtn(button: cell.hotBtn)
                    offBtn(button: cell.iceBtn)
                    reloadInputViews()
                } else {
                    offBtn(button: cell.hotBtn)
                    onBtn(button: cell.iceBtn)
                }
                
                return cell
            default:
                return UITableViewCell()
            }
        case 1:
            switch indexPath.row {
            case 0:
                switch opt.type {
                case 1, 2, 3, 6, 7:
                    let cell = tableView.dequeueReusableCell(withIdentifier: "iceTypeCell", for: indexPath) as! IceTypeCell
                    
                    if opt.hotice_option == "ICE" {
                        onBtn(button: cell.smallIceBtn)
                    } else {
                        offBtn(button: cell.smallIceBtn)
                    }
                    
                    return cell
                case 4, 5:
                    let cell = tableView.dequeueReusableCell(withIdentifier: "sugarLevelCell", for: indexPath) as! SugarLevelCell
                    return cell
                default:
                    return UITableViewCell()
                }
            case 1:
                switch opt.type {
                case 1, 2, 3, 6, 7:
                    if opt.hotice_option == "HOT" {
                        let cell = tableView.dequeueReusableCell(withIdentifier: "iceAmountCell", for: indexPath) as! IceAmountCell
                        
                        return cell
                    } else {
                        let cell = tableView.dequeueReusableCell(withIdentifier: "iceAmountCell", for: indexPath) as! IceAmountCell
                        
                        return cell
                    }
                case 5:
                    let cell = tableView.dequeueReusableCell(withIdentifier: "whipCell", for: indexPath) as! WhipCell
                    
                    onBtn(button: cell.yesWhipBtn)
                    
                    return cell
                default:
                    return UITableViewCell()
                }
            case 2:
                switch opt.type {
                case 1, 2, 3, 6, 7:
                    let cell = tableView.dequeueReusableCell(withIdentifier: "sugarLevelCell", for: indexPath) as! SugarLevelCell
                    return cell
                default:
                    return UITableViewCell()
                }
            case 3:
                switch opt.type {
                case 1, 2:
                    let cell = tableView.dequeueReusableCell(withIdentifier: "halfshotCell", for: indexPath) as! HalfShotCell
                    return cell
                default:
                    return UITableViewCell()
                }
            case 4:
                switch opt.type {
                case 2:
                    let cell = tableView.dequeueReusableCell(withIdentifier: "whipCell", for: indexPath) as! WhipCell
                    
                    onBtn(button: cell.yesWhipBtn)
                    
                    return cell
                default:
                    return UITableViewCell()
                }
            default:
                return UITableViewCell()
            }
        case 2:
            switch indexPath.row {
            case 0:
                switch opt.type {
                case 1, 2:
                    let cell = tableView.dequeueReusableCell(withIdentifier: "vanilaSyrupCell", for: indexPath) as! VanilaSyrupCell
                    return cell
                case 3, 4, 5, 6, 7:
                    let cell = tableView.dequeueReusableCell(withIdentifier: "pearlCell", for: indexPath) as! PearlCell
                    return cell
                default:
                    return UITableViewCell()
                }
            case 1:
                switch opt.type {
                case 1, 2:
                    let cell = tableView.dequeueReusableCell(withIdentifier: "hazelnutSyrupCell", for: indexPath) as! HazelnutSyrupCell
                    return cell
                default:
                    return UITableViewCell()
                }
            case 2:
                switch opt.type {
                case 1, 2:
                    let cell = tableView.dequeueReusableCell(withIdentifier: "shotAddCell", for: indexPath) as! ShotAddCell
                    return cell
                default:
                    return UITableViewCell()
                }
            case 3:
                switch opt.type {
                case 1, 2:
                    let cell = tableView.dequeueReusableCell(withIdentifier: "pearlCell", for: indexPath) as! PearlCell
                    return cell
                default:
                    return UITableViewCell()
                }
            default:
                return UITableViewCell()
            }
        default:
            return UITableViewCell()
        }
    }
}

extension OptionViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false) // 선택 해제
    }
}

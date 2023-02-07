//
//  OrderListViewController.swift
//  KioskSimulator
//
//  Created by 김정현 on 2022/07/26.
//

import UIKit

class OrderListViewController: UIViewController {
    @IBOutlet weak var orderTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func delBtn(_ sender: UIButton) {
        
    }
    
    @IBAction func okBtn(_ sender: UIButton) {
        
    }
}

extension OrderListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return orderList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "orderListCell", for: indexPath) as! OrderListCell
        let row = indexPath.row
        cell.menuImage.image = UIImage(named: orderList[row].menu_image)
        cell.menuLabel.text = orderList[row].menu
        cell.amountLabel.text = "\(orderList[row].amount!)"
        cell.priceLabel.text = orderList[row].price
        cell.optionLabel.text = orderList[row].option
        return cell
    }
    
}

extension OrderListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("selected")
        tableView.deselectRow(at: indexPath, animated: false) // 선택 해제
//        performSegue(withIdentifier: "goDetail", sender: self) // 화면 전환
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return self.orderTableView.frame.height / 5 // 화면에 나타날 셀 수 조정하기
    }
}

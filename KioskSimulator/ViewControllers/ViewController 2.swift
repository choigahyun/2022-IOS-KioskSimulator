//
//  ViewController.swift
//  KioskSimulator
//
//  Created by 김정현 on 2022/07/21.
//

import UIKit

class ViewController: UIViewController {
    
    var menuImages = ["coffee_01"]
    var menuData = [
        MenuData("coffee_01", "아메리카노", 1800)
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return menuImages.count * 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "menuCell", for: indexPath) as! MenuCell

        // 메뉴명, 가격 채우기
        let data = menuData[indexPath.row % 1]
        cell.menuLabel.text = data.menu
        cell.priceLabel.text = "\(data.price!)"

        // 타이틀 이미지 변경
        cell.menuImage.image = UIImage(named: data.menu_image)

        // 구분선
        cell.layer.borderWidth = 0.3
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.cornerRadius = 5

        return cell
    }
}


extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = self.view.frame.size.width / 5
        let height = width * 1.8
        
        return CGSize(width: width, height: height)
    }
}

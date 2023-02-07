//
//  IceBlendedMenuViewController.swift
//  KioskSimulator
//
//  Created by 김정현 on 2022/07/26.
//

import UIKit

class IceBlendedMenuController: UIViewController {
    @IBOutlet weak var iceblendedCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goOptionfromIceblended" {
            let cell = sender as! UICollectionViewCell
            let indexPath = self.iceblendedCollectionView.indexPath(for: cell)
            let selectView = segue.destination as! OptionViewController
            selectView.receiveData(iceblendedMenuData[indexPath!.row])
        }
    }
}


extension IceBlendedMenuController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return iceblendedMenuData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "iceblendedCell", for: indexPath) as! IceBlendedCell

        // 메뉴명, 가격 채우기
        let data = iceblendedMenuData[indexPath.row % iceblendedMenuData.count]
        cell.menuLabel.text = data.menu
        cell.hoticeLabel.text = data.hotice
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


extension IceBlendedMenuController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = UIScreen.main.bounds.width / 4
        let height = width * 1.8
        
        return CGSize(width: width, height: height)
    }
}

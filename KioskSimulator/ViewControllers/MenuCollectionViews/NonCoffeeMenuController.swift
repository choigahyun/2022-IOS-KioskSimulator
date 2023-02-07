//
//  NonCoffeeMenuController.swift
//  KioskSimulator
//
//  Created by 김정현 on 2022/07/26.
//

import UIKit

class NonCoffeeMenuController: UIViewController {
    @IBOutlet weak var noncoffeeCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goOptionfromNonCoffee" {
            let cell = sender as! UICollectionViewCell
            let indexPath = self.noncoffeeCollectionView.indexPath(for: cell)
            let selectView = segue.destination as! OptionViewController
            selectView.receiveData(noncoffeeMenuData[indexPath!.row])
        }
    }
}


extension NonCoffeeMenuController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return noncoffeeMenuData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "noncoffeeCell", for: indexPath) as! NonCoffeeCell

        // 메뉴명, 가격 채우기
        let data = noncoffeeMenuData[indexPath.row % noncoffeeMenuData.count]
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


extension NonCoffeeMenuController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = UIScreen.main.bounds.width / 4
        let height = width * 1.8
        
        return CGSize(width: width, height: height)
    }
}

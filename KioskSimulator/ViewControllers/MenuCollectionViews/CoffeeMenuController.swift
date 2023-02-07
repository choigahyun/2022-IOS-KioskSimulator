//
//  ViewController.swift
//  KioskSimulator
//
//  Created by 김정현 on 2022/07/21.
//

import UIKit

class CoffeeMenuController: UIViewController {
    @IBOutlet weak var coffeeCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goOptionfromCoffee" {
            let cell = sender as! UICollectionViewCell
            let indexPath = self.coffeeCollectionView.indexPath(for: cell)
            let selectView = segue.destination as! OptionViewController
            selectView.receiveData(coffeeMenuData[indexPath!.row])
        }
    }
}


extension CoffeeMenuController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return coffeeMenuData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "coffeeCell", for: indexPath) as! CoffeeCell

        // 메뉴명, 가격 채우기
        let data = coffeeMenuData[indexPath.row % coffeeMenuData.count]
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


extension CoffeeMenuController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = UIScreen.main.bounds.width / 4
        let height = width * 1.8
        
        return CGSize(width: width, height: height)
    }
}

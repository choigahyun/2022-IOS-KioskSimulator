//
//  SeasonMenuController.swift
//  KioskSimulator
//
//  Created by 김정현 on 2022/07/25.
//

import UIKit

class SeasonMenuController: UIViewController {
    
    @IBOutlet weak var seasonCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goOptionfromSeason" {
            let cell = sender as! UICollectionViewCell
            let indexPath = self.seasonCollectionView.indexPath(for: cell)
            let selectView = segue.destination as! OptionViewController
            selectView.receiveData(seasonMenuData[indexPath!.row])
        }
    }
}

extension SeasonMenuController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return seasonMenuData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "seasonCell", for: indexPath) as! SeasonCell

        // 메뉴명, 가격 등 채우기
        let data = seasonMenuData[indexPath.row % seasonMenuData.count]
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


extension SeasonMenuController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = UIScreen.main.bounds.width / 4
        let height = width * 1.8
        
        return CGSize(width: width, height: height)
    }
}

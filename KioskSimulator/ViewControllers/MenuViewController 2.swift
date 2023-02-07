//
//  MenuViewController.swift
//  KioskSimulator
//
//  Created by 김정현 on 2022/07/21.
//

import UIKit

class MenuViewController: UIViewController {
    @IBOutlet weak var bannerScrollVeiw: UIScrollView!
    
    
    // 현재페이지 체크 변수 (자동 스크롤할 때 필요)
    var nowPage: Int = 0

    // 데이터 배열
//    let bannerArray: Array<UIImage> = [
//        UIImage(named: "banner_01.png")!,
//        UIImage(named: "banner_02.png")!
//    ]
    
    
    
    override func viewDidLoad(_ animated: Bool) {
        super.viewDidLoad(animated)
        
        scrollView.delegate = self
        addContentScrollView()
        setPageControl()
        
//        bannerCollectionVeiw.delegate = self
//        bannerCollectionVeiw.dataSource = self
    }
    
}

//extension MenuViewController: UICollectionViewDataSource {
//    //컬렉션뷰 개수 설정
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return bannerArray.count
//    }
//    //컬렉션뷰 셀 설정
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = bannerCollectionVeiw.dequeueReusableCell(withReuseIdentifier: "bannerCell", for: indexPath) as! BannerCell
//        cell.bannerImageView.image = bannerArray[indexPath.row]
//        return cell
//    }
//}
//
//extension MenuViewController: UICollectionViewDelegate {
//    //컬렉션뷰 사이즈 설정
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: bannerCollectionVeiw.frame.size.width, height:  bannerCollectionVeiw.frame.height)
//    }
//
//    //컬렉션뷰 감속 끝났을 때 현재 페이지 체크
//    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
//        nowPage = Int(scrollView.contentOffset.x) / Int(scrollView.frame.width)
//    }
//}

//
//  MenuViewController.swift
//  KioskSimulator
//
//  Created by 김정현 on 2022/07/21.
//

import UIKit

class MenuViewController: UIViewController {
    
    @IBOutlet weak var bannerScrollView: UIScrollView!
    @IBOutlet weak var bannerPageControl: UIPageControl!
    
    
    // 현재페이지 체크 변수 (자동 스크롤할 때 필요)
    var nowPage: Int = 0
    
    // 이미지
    var bannerImages = [#imageLiteral(resourceName: "banner_01"), #imageLiteral(resourceName: "banner_02")]
    var imageViews = [UIImageView]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bannerScrollView.delegate = self
        addContentBannerView()
        setPageControl()
    }
    private func addContentBannerView() {
        for index in 0..<bannerImages.count {
            let imageView = UIImageView()
            // 화면 너비 : 높이 = 300 : 100 -> 너비*100 = 높이*300 -> 높이 = 너비 * 100 / 300
            let screenSize = UIScreen.main.bounds
            // 화면의 정보
            let width = screenSize.width
            let height = width * 100 / 300
            imageView.frame = CGRect(x: CGFloat(index)*width, y: 0, width: width, height: height)
            imageView.image = bannerImages[index]
            bannerScrollView.addSubview(imageView)
            bannerScrollView.contentSize.width = imageView.frame.width * CGFloat(index + 1)
        }
    }
    private func setPageControl() {
        bannerPageControl.numberOfPages = bannerImages.count
    }
    private func setPageControlSelectedPage(currentPage:Int) {
        bannerPageControl.currentPage = currentPage
    }
    
    @IBAction func goHome(_ sender: Any) {
        
        self.navigationController?.popToRootViewController(animated: true)
        
//        if let storyboard = self.storyboard {
//            let vc = storyboard.instantiateViewController(identifier: "homeScreen") // ViewController 만들기 // Storyboard ID 사용
//            vc.modalPresentationStyle = .fullScreen // 꽉찬 화면
//            self.present(vc, animated: true, completion: nil) // 띄우고 싶은 화면
//            // animated: 애니메이션 효과
//            // completion: 끝난 후 동작
//        }
    }
    
}


extension MenuViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let value = scrollView.contentOffset.x/scrollView.frame.size.width
            setPageControlSelectedPage(currentPage: Int(round(value)))
    }
}

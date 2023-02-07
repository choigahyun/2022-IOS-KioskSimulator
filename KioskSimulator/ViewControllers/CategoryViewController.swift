//
//  CategoryViewController.swift
//  KioskSimulator
//
//  Created by 김정현 on 2022/07/21.
//

import UIKit
import Parchment

class CategoryViewController: UIViewController {
    
    var pagingViewController: PagingViewController!
    var viewControllers: [UIViewController] = [] // 초기화 필요
    
    let menuTitles = ["시즌메뉴", "커피", "논커피", "아이스 블렌디드", "티", "디저트"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        for menu in menuTitles {
            switch menu {
            case "시즌메뉴":
                let vc0 = storyboard?.instantiateViewController(withIdentifier: "seasonListView") as? SeasonMenuController
                vc0!.title = menuTitles[0]
                viewControllers.append(vc0!)
            case "커피":
                let vc1 = storyboard?.instantiateViewController(withIdentifier: "coffeeListView") as? CoffeeMenuController
                vc1!.title = menuTitles[1]
                viewControllers.append(vc1!)
            case "논커피":
                let vc2 = storyboard?.instantiateViewController(withIdentifier: "noncoffeeListView") as? NonCoffeeMenuController
                vc2!.title = menuTitles[2]
                viewControllers.append(vc2!)
            case "아이스 블렌디드":
                let vc3 = storyboard?.instantiateViewController(withIdentifier: "iceblendedListView") as? IceBlendedMenuController
                vc3!.title = menuTitles[3]
                viewControllers.append(vc3!)
            case "티":
                let vc4 = storyboard?.instantiateViewController(withIdentifier: "teaListView") as? TeaMenuController
                vc4!.title = menuTitles[4]
                viewControllers.append(vc4!)
            case "디저트":
                let vc5 = storyboard?.instantiateViewController(withIdentifier: "desertListView") as? DesertMenuController
                vc5!.title = menuTitles[5]
                viewControllers.append(vc5!)
            default:
                print("default")
            }
        }
        
        
        pagingViewController = PagingViewController(viewControllers: viewControllers)
        pagingViewController.menuItemSize = .fixed(width: 120, height: 40)
        pagingViewController.menuItemSpacing = 10
        pagingViewController.menuItemLabelSpacing = 0
        pagingViewController.indicatorOptions = .hidden
        pagingViewController.selectedBackgroundColor = .systemBlue
        pagingViewController.selectedTextColor = .white
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        addChild(pagingViewController)
        pagingViewController.view.frame = self.view.frame
        view.addSubview(pagingViewController.view)
        pagingViewController.didMove(toParent: self)
    }
}


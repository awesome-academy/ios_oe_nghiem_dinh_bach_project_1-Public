//
//  TabBarController.swift
//  MovieApp
//
//  Created by Bach Nghiem on 14/09/2023.
//

import UIKit

final class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        config()
    }
    private func config() {
        let homeVC = UINavigationController(rootViewController: Constant.ViewController.HOME)
        let upComingVC = UINavigationController(rootViewController: Constant.ViewController.UPCOMING)
        let searchVC = UINavigationController(rootViewController: Constant.ViewController.SEARCH)
        let favouriteVC = UINavigationController(rootViewController: Constant.ViewController.FAVOURITE)
        homeVC.tabBarItem.image = UIImage(systemName: "house")
        upComingVC.tabBarItem.image = UIImage(systemName: "play.circle")
        searchVC.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        favouriteVC.tabBarItem.image = UIImage(systemName: "heart")
        homeVC.title = Constant.Title.HOME
        upComingVC.title =  Constant.Title.UPCOMING
        searchVC.title = Constant.Title.SEARCH
        favouriteVC.title = Constant.Title.FAVOURITE
        tabBar.barTintColor = .black
        setViewControllers([homeVC, upComingVC, searchVC, favouriteVC], animated: true)
    }
}

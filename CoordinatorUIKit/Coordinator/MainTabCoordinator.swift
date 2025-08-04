//
//  MainTabCoordinator.swift
//  CoordinatorUIKit
//
//  Created by Engin on 4.08.2025.
//

import UIKit

class MainTabCoordinator: Coordinator {
    var navigationController: UINavigationController
    weak var appCoordinator: AppCoordinator?

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        
        
        let tabBar = UITabBarController()
        
        let homeVC = HomeViewController()
        homeVC.coordinator = self
        let profileVC = ProfileViewController()
        profileVC	.coordinator = self
        
        homeVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)
        profileVC.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 1)
        
        let homeNav = UINavigationController(rootViewController: homeVC)
        let profileNav = UINavigationController(rootViewController: profileVC)
        
        tabBar.viewControllers = [homeNav, profileNav]
        navigationController.setViewControllers([tabBar], animated: true)
    }

    @objc func logoutTapped() {
        appCoordinator?.goToOnboarding()
    }
}

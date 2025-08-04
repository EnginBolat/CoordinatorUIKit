//
//  AppCoordinator.swift
//  CoordinatorUIKit
//
//  Created by Engin on 4.08.2025.
//

import UIKit
import Foundation

protocol Coordinator: AnyObject {
    var navigationController: UINavigationController { get set }
    func start()
}

class AppCoordinator: Coordinator {
    let window: UIWindow
    var navigationController: UINavigationController
    var onboardingCoordinator: OnboardingCoordinator?
    var mainTabCoordinator: MainTabCoordinator?

    init(window: UIWindow) {
        self.window = window
        self.navigationController = UINavigationController()
    }

    func start() {
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        goToOnboarding()
    }

    func goToOnboarding() {
        navigationController.viewControllers.removeAll()

        onboardingCoordinator = OnboardingCoordinator(navigationController: navigationController)
        onboardingCoordinator?.appCoordinator = self
        onboardingCoordinator?.start()
    }

    func goToMainTab() {
        mainTabCoordinator = MainTabCoordinator(navigationController: navigationController)
        mainTabCoordinator?.appCoordinator = self
        mainTabCoordinator?.start()
    }
}

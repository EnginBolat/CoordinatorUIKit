//
//  OnboardingCoordinator.swift
//  CoordinatorUIKit
//
//  Created by Engin on 4.08.2025.
//

import UIKit

class OnboardingCoordinator: Coordinator {
    var navigationController: UINavigationController
    weak var appCoordinator: AppCoordinator?

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let openingVC = OpeningViewController()
        openingVC.coordinator = self
        navigationController.setViewControllers([openingVC], animated: false)
    }

    func goToSignUp() {
        let signupVC = SignUpViewController()
        signupVC.coordinator = self
        navigationController.pushViewController(signupVC, animated: true)
    }

    func finishOnboarding() {
        appCoordinator?.goToMainTab()
    }
}

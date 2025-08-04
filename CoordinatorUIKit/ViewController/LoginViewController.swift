//
//  LoginViewController.swift
//  CoordinatorUIKit
//
//  Created by Engin on 4.08.2025.
//

import UIKit
import Foundation

class LoginViewController: UIViewController {
    weak var coordinator: OnboardingCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        title = "Login"

        let loginButton = UIButton(type: .system)
        loginButton.setTitle("Login & Continue", for: .normal)
        loginButton.addTarget(self, action: #selector(loginAndContinue), for: .touchUpInside)

        view.addSubview(loginButton)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

    @objc func loginAndContinue() {
        coordinator?.finishOnboarding()
    }
}

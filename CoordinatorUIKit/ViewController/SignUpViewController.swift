//
//  RegisterViewController.swift
//  CoordinatorUIKit
//
//  Created by Engin on 4.08.2025.
//

import UIKit
import Foundation

class SignUpViewController: UIViewController {
    weak var coordinator: OnboardingCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray6
        title = "Register"

        let finishButton = UIButton(type: .system)
        finishButton.setTitle("Complete Sign Up", for: .normal)
        finishButton.addTarget(self, action: #selector(finishOnboarding), for: .touchUpInside)

        view.addSubview(finishButton)
        finishButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            finishButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            finishButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

    @objc func finishOnboarding() {
        coordinator?.finishOnboarding()
    }
}

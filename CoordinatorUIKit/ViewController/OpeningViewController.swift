//
//  OpeningViewController.swift
//  CoordinatorUIKit
//
//  Created by Engin on 4.08.2025.
//

import UIKit

class OpeningViewController: UIViewController {
    weak var coordinator: OnboardingCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        let button = UIButton(type: .system)
        button.setTitle("Go to SignUp", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(signup), for: .touchUpInside)

        view.addSubview(button)
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

    @objc func signup() {
        coordinator?.goToSignUp()
    }
}

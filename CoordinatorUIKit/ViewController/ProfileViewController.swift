//
//  ProfileViewController.swift
//  CoordinatorUIKit
//
//  Created by Engin on 4.08.2025.
//

import UIKit

class ProfileViewController: UIViewController {
    weak var coordinator: MainTabCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        title = "Profile"

        let button = UIButton(type: .system)
        button.setTitle("Logout", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(logoutTapped), for: .touchUpInside)

        view.addSubview(button)
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }

    @objc private func logoutTapped() {
        coordinator?.logoutTapped()
    }
}

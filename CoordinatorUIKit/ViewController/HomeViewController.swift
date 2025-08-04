//
//  HomeViewController.swift
//  CoordinatorUIKit
//
//  Created by Engin on 4.08.2025.
//

import UIKit

class HomeViewController: UIViewController {
    weak var coordinator: MainTabCoordinator?

    let button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Go to Detail", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Home"

        setupUI()
    }

    @objc private func popToRoot() {
        coordinator?.logoutTapped()
    }

    private func setupUI() {
        view.addSubview(button)

        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])

        button.addTarget(self, action: #selector(popToRoot), for: .touchUpInside)
    }
}

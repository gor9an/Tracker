//
//  TrackersViewController.swift
//  Tracker
//
//  Created by Andrey Gordienko on 29.04.2024.
//

import UIKit

final class TrackersViewController: UIViewController {
    private let stubLabel = UILabel()
    private let stubImageView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cWhite
        setupStubs()
    }
    
    private func setupStubs() {
        configureStubImageView()
        configureStubLabel()
        
        view.addSubviews([
            stubImageView,
            stubLabel
        ])
        
        NSLayoutConstraint.activate([
            stubImageView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            stubImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 220),
            stubImageView.widthAnchor.constraint(equalToConstant: 80),
            stubImageView.heightAnchor.constraint(equalToConstant: 80),
            stubLabel.topAnchor.constraint(equalTo: stubImageView.bottomAnchor, constant: 8),
            stubLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    private func configureStubImageView() {
        stubImageView.translatesAutoresizingMaskIntoConstraints = false
        stubImageView.image = UIImage(named: "StubStar")
        stubImageView.tintColor = .cGray
    }
    
    private func configureStubLabel() {
        stubLabel.translatesAutoresizingMaskIntoConstraints = false
        stubLabel.text = "Что будем отслеживать?"
        stubLabel.tintColor = .cBlack
    }
}

extension TrackersViewController: TrackersNavigationControllerDelegate {
    func dateWasChanged(date: Date) {
        //TODO
    }
    
    func didAddTrackerButtonTapped() {
        //TODO
    }
}

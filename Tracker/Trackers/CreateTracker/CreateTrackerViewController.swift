//
//  CreateTrackerViewController.swift
//  Tracker
//
//  Created by Andrey Gordienko on 04.06.2024.
//

import UIKit

final class CreateTrackerViewController: UIViewController {
    // MARK: Properties
    private let titleLabel = UILabel()
    private let habitButton = UIButton(type: .system)
    private let irregularEventButton = UIButton(type: .system)
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cWhite
        
        configureViews()
    }
    
    // MARK: Functions
    private func configureViews() {
        configureTitle()
        configureButtons()
        
        view.addSubviews([
            titleLabel,
            habitButton,
            irregularEventButton
        ])

        
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 14),
            
            habitButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            habitButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            habitButton.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 295),
            habitButton.heightAnchor.constraint(equalToConstant: 60),
            
            irregularEventButton.leadingAnchor.constraint(equalTo: habitButton.leadingAnchor),
            irregularEventButton.trailingAnchor.constraint(equalTo: habitButton.trailingAnchor),
            irregularEventButton.topAnchor.constraint(equalTo: habitButton.bottomAnchor, constant: 16),
            irregularEventButton.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
    
    private func configureTitle() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = "Создание трекера"
        titleLabel.font = .systemFont(ofSize: 16, weight: .medium)
        titleLabel.tintColor = .cBlack
    }
    
    private func configureButtons() {
        habitButton.translatesAutoresizingMaskIntoConstraints = false
        irregularEventButton.translatesAutoresizingMaskIntoConstraints = false
        
        habitButton.backgroundColor = .cBlack
        habitButton.setTitle("Привычка", for: .normal)
        habitButton.setTitleColor(.cWhite, for: .normal)
        habitButton.titleLabel?.font = .systemFont(ofSize: 16, weight: .medium)
        habitButton.layer.cornerRadius = 16
        habitButton.addTarget(self, action: #selector(habitButtonTapped), for: .touchUpInside)
        
        irregularEventButton.backgroundColor = .cBlack
        irregularEventButton.setTitle("Нерегулярное событие", for: .normal)
        irregularEventButton.setTitleColor(.cWhite, for: .normal)
        irregularEventButton.titleLabel?.font = .systemFont(ofSize: 16, weight: .medium)
        irregularEventButton.layer.cornerRadius = 16
        irregularEventButton.addTarget(self, action: #selector(irregularEventButtonTapped), for: .touchUpInside)
    }
    
    //MARK: - Objc functions
    @objc
    private func habitButtonTapped() {
        
    }
    
    @objc
    private func irregularEventButtonTapped() {
        
    }
}

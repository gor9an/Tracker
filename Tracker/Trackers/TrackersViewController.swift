//
//  TrackersViewController.swift
//  Tracker
//
//  Created by Andrey Gordienko on 29.04.2024.
//

import UIKit

class TrackersViewController: UIViewController {
    
    private var addTrackerButton: UIButton?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cBlack
        
        createButtons()
        
        addSubviewsOnView()
        configureAddTargetButton()
    }
    
    @objc
    func didAddTrackerButtonTapped() {
        //TODO
    }
    
    func addSubviewsOnView() {
        guard let addTrackerButton else { return }
        addTrackerButton.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubviews([
            addTrackerButton
        ])
    }
    
    func createButtons() {
        addTrackerButton = UIButton.systemButton(
            with: UIImage(named: "AddTracker")!,
            target: self,
            action: #selector(Self.didAddTrackerButtonTapped)
        )
        
        addTrackerButton?.tintColor = .cWhite
    }
    
    func configureAddTargetButton() {
        guard let addTrackerButton else { return }
        
        NSLayoutConstraint.activate([
            addTrackerButton.widthAnchor.constraint(equalToConstant: 42),
            addTrackerButton.heightAnchor.constraint(equalToConstant: 42),
            addTrackerButton.leadingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.leadingAnchor,
                constant: 6
            ),
            addTrackerButton.topAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.topAnchor,
                constant: 1)
        ])
    }
}

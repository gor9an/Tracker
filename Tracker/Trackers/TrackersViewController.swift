//
//  TrackersViewController.swift
//  Tracker
//
//  Created by Andrey Gordienko on 29.04.2024.
//

import UIKit

final class TrackersViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cWhite
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

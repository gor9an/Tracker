//
//  TrackersNavigationControllerDelegate.swift
//  Tracker
//
//  Created by Andrey Gordienko on 14.05.2024.
//

import UIKit

protocol TrackersNavigationControllerDelegate: UIViewController {
    func dateWasChanged(date: Date)
    func didAddTrackerButtonTapped()
}

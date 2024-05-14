//
//  TabBarController.swift
//  Tracker
//
//  Created by Andrey Gordienko on 29.04.2024.
//

import UIKit

final class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let trackersViewController = TrackersViewController()
        trackersViewController.tabBarItem = UITabBarItem(
            title: "Трекеры",
            image: UIImage(named: "TrackerTB"),
            selectedImage: nil
        )
        
        let trackerNavigationController = TrackersNavigationController(rootViewController: trackersViewController)
        
        let statsViewController = StatsViewController()
        statsViewController.tabBarItem = UITabBarItem(
            title: "Статистика",
            image: UIImage(named: "StatsTB"),
            selectedImage: UIImage(named: "StatsTB")
        )
        
        self.viewControllers = [trackerNavigationController, statsViewController]
    }
}

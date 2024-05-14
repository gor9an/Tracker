//
//  TrackersNavigationController.swift
//  Tracker
//
//  Created by Andrey Gordienko on 14.05.2024.
//

import UIKit

final class TrackersNavigationController: UINavigationController {
    // MARK: Properties
    weak var delegateTracker: TrackersNavigationControllerDelegate?
    
    private var addTrackerButton = UIButton()
    private let datePicker = UIDatePicker()
    private let formatter = DateFormatterConfigure.standard.formatter
    private let searchController = UISearchController(searchResultsController: nil)
    
    // MARK: Init
    init(rootViewController: TrackersNavigationControllerDelegate) {
        super.init(rootViewController: rootViewController)
        
        delegateTracker = rootViewController
        configureViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Functions
    
    @objc
    func didAddTrackerButtonTapped() {
        delegateTracker?.didAddTrackerButtonTapped()
    }
    
    func configureViews() {
        createButtons()
        configureDatePicker()
        configureLabels()
        configureSearchField()
        setupNavBar()
    }
    
    func setupNavBar() {
        delegateTracker?.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: addTrackerButton)
        delegateTracker?.navigationItem.searchController = searchController
        delegateTracker?.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: datePicker)
    }
    
    func createButtons() {
        addTrackerButton = UIButton.systemButton(
            with: UIImage(named: "AddTracker")!,
            target: self,
            action: #selector(Self.didAddTrackerButtonTapped)
        )
        addTrackerButton.tintColor = .cBlack

    }
    
    func configureDatePicker() {
        datePicker.translatesAutoresizingMaskIntoConstraints = false
        datePicker.widthAnchor.constraint(equalToConstant: 120).isActive = true
        datePicker.preferredDatePickerStyle = .compact
        datePicker.locale = formatter.locale
        datePicker.datePickerMode = .date
        let date = Date()
        datePicker.setDate(date, animated: false)
    }
    
    func configureLabels() {
        delegateTracker?.navigationItem.titleView?.tintColor = .cBlack
        delegateTracker?.navigationController?.navigationBar.prefersLargeTitles = true
        delegateTracker?.navigationItem.title = "Трекеры"
    }
    
    func configureSearchField() {
        searchController.searchBar.placeholder = "Поиск"
        searchController.searchBar.setValue("Отменить", forKey: "cancelButtonText")
    }
}

//
//  TabBarController.swift
//  AboutMeApp
//
//  Created by Андрей Сорокин on 09.12.2024.
//

import UIKit

final class TabBarController: UITabBarController {
    
    //MARK: - Propperty
    
    var user: User!
    
    //MARK: - override method
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureITabBarAppearance()
        initializeUserData()
        tabBar.items?.last?.title = user.person.fullName
    }
    
    // MARK: - Private Methods
    
    private func configureITabBarAppearance() {
        let appearance = UITabBarAppearance()
        appearance.backgroundColor = .tabBarColor
        tabBar.standardAppearance = appearance
        tabBar.scrollEdgeAppearance = appearance
    }
    
    private func initializeUserData() {
        guard let viewControllers else { return }
        viewControllers.forEach {
            if let welconViewController = $0 as? WelcomeViewController {
                welconViewController.user = user
            }else if let navigationController = $0 as? UINavigationController {
                let aboutMeViewController = navigationController.topViewController as? AboutMeViewController
                aboutMeViewController?.user = user
            }
        }
    }
}




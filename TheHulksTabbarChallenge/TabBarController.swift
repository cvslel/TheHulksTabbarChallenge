//
//  TabBarController.swift
//  TheHulksTabbarChallenge
//
//  Created by Cenker Soyak on 6.10.2023.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.tabBar.backgroundColor = .black
        self.setupTabs()
        
        tabBar.layer.cornerRadius = 5
        tabBar.barTintColor = .black
        tabBar.tintColor = .purple
        tabBar.unselectedItemTintColor = .white
    }
    
    private func setupTabs(){
        let home = self.createNav(with: "Home", and: UIImage(systemName: "house"), vc: HomeController())
        let tasks = self.createNav(with: "Tasks", and: UIImage(systemName: "sensor.fill"), vc: TasksController())
        let panel = self.createNav(with: "Panel", and: UIImage(systemName: "poweroutlet.type.f.fill"), vc: PanelController())
        let settings = self.createNav(with: "Settings", and: UIImage(systemName: "gear"), vc: SettingsController())
        
        self.setViewControllers ([home, tasks, panel, settings], animated:true)
    }
    
    private func createNav(with title: String, and image: UIImage?, vc: UIViewController) -> UINavigationController{
        let nav = UINavigationController(rootViewController: vc)
        nav.tabBarItem.title = title
        nav.tabBarItem.image = image
        nav.viewControllers.first?.navigationItem.title = title + " Controller"
        return nav
    }
}

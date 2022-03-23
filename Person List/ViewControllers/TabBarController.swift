//
//  TabBarController.swift
//  Person List
//
//  Created by MAC  on 23.03.2022.
//

import UIKit

class TabBarController: UITabBarController {
    
    private let persons = Person.persons
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            
            guard let viewControllers = self.viewControllers else { return }
            
            viewControllers.forEach {
                if let navigationVC = $0 as? UINavigationController {
                    guard let personListVC = navigationVC.topViewController as? PersonListViewController else { return }
                    personListVC.persons = persons
                    guard let personDataVC = navigationVC.topViewController as? PersonDataViewController else { return }
                    personDataVC.persons = persons
                }
            }
        }
    }
}

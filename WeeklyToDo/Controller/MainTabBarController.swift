//
//  MainTabBarController.swift
//  WeeklyToDo
//
//  Created by Hina on 2023/08/27.
//
import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var viewControllers = [UIViewController]()
        let tab1VC = UIStoryboard(name: "ToDoList", bundle: nil).instantiateInitialViewController()
        tab1VC?.tabBarItem = UITabBarItem(title: "ToDo", image: .init(systemName: "pencil.circle"),tag: 0)
        viewControllers.append(tab1VC!)
        
        let tab2VC = UIStoryboard(name: "Calendar", bundle: nil).instantiateInitialViewController()
        tab2VC?.tabBarItem = UITabBarItem(title: "Diary", image: .init(systemName: "calendar.badge.plus"),tag: 0)
        viewControllers.append(tab2VC!)
        
        self.setViewControllers(viewControllers, animated: false)
    }
}

//
//  TabBarController.swift
//  View
//
//  Created by Kair on 04.04.2024.
//

import Foundation
import UIKit

class TabBarController: UITabBarController, UITabBarControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Назначаем делегата таб-бару
        self.delegate = self
    }
    
    // MARK: - UITabBarControllerDelegate
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        guard let fromView = tabBarController.selectedViewController?.view,
              let toView = viewController.view else {
            return
        }
        
        // Анимация перехода: плавное появление нового контента
        toView.alpha = 0.0
        UIView.animate(withDuration: 0.5) {
            toView.alpha = 1.0
        }
    }
}



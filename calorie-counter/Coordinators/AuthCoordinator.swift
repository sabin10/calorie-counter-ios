//
//  AuthCoordinator.swift
//  calorie-counter
//
//  Created by Sabin on 22/08/2019.
//  Copyright © 2019 Sabin. All rights reserved.
//

import Foundation
import UIKit

class AuthCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = LoginController.instantiate(storyboardName: "Auth")
        viewController.coordinator = self
        navigationController.pushViewController(viewController, animated: false)
    }
    
    func toRegister() {
        let viewController = RegisterController.instantiate(storyboardName: "Auth")
        viewController.coordinator = self
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func toMainCoordinator() {
        let mainNavController = UINavigationController()
        let mainCoordinator = MainCoordinator(navigationController: mainNavController)
        childCoordinators.append(mainCoordinator)
        mainCoordinator.start()
    }
    
}

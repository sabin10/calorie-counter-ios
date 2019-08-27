//
//  AuthCoordinator.swift
//  calorie-counter
//
//  Created by Sabin on 22/08/2019.
//  Copyright © 2019 Sabin. All rights reserved.
//

import Foundation
import UIKit

protocol AuthCoordinatorDelegate: class {
    func hide(_ coordinator: AuthCoordinator)
}

class AuthCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    weak var delegate: AuthCoordinatorDelegate?
    var baseViewController: UIViewController { return loginViewController }
    
    let loginViewController: LoginViewController
    
    init() {
        loginViewController = LoginViewController.instantiate()
        loginViewController.navigationDelegate = self
    }
    
    func start() {
    }

    func toRegister() {
        
    }
    
    
}

//
//  Coordinator.swift
//  calorie-counter
//
//  Created by Sabin on 22/08/2019.
//  Copyright © 2019 Sabin. All rights reserved.
//

import Foundation
import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}

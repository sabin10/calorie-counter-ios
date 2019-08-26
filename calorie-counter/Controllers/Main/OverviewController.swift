//
//  OverviewController.swift
//  calorie-counter
//
//  Created by Sabin on 22/08/2019.
//  Copyright © 2019 Sabin. All rights reserved.
//

import UIKit
import FirebaseAuth

class OverviewController: UIViewControllerBase, Storyboarded {

    weak var coordinator: MainCoordinator?
    
    override func viewDidLoad() {
      
    }

    @IBAction func signOutPressed(_ sender: Any) {
        
        do {
            try Auth.auth().signOut()
            
        } catch let err {
            print(err)
        }
    }
}

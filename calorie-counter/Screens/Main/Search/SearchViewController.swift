//
//  SearchViewController.swift
//  calorie-counter
//
//  Created by Sabin on 27/08/2019.
//  Copyright © 2019 Sabin. All rights reserved.
//

import UIKit

extension SearchViewController: Storyboarded {
    static var storyboardName: String { return "Main"}
}

class SearchViewController: UIViewController {
    
    weak var coordinator: MainCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func toAddFood(_ sender: Any) {
        coordinator?.toAddFood()
    }
    

}

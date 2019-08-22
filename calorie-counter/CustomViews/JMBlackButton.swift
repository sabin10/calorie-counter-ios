//
//  JMBlackButton.swift
//  calorie-counter
//
//  Created by Sabin on 22/08/2019.
//  Copyright © 2019 Sabin. All rights reserved.
//

import Foundation
import UIKit

class JMBlackButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    
    
    private func setupButton() {
        setTitleColor(Colors.white, for: .normal)
        backgroundColor     = .black
//        titleLabel?.font    = UIFont(name: Fonts.avenirNextMedium, size: 20)
        layer.cornerRadius  = frame.size.height/2
    }

}

//
//  JMAuthTextField.swift
//  calorie-counter
//
//  Created by Sabin on 21/08/2019.
//  Copyright © 2019 Sabin. All rights reserved.
//

import Foundation
import UIKit

class JMAuthTextField: UITextField {
    
    let padding = UIEdgeInsets(top: 10, left: 20, bottom: 10, right: 0)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupField()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupField()
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }

    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }

    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    private func setupField() {
        borderStyle = .roundedRect
        layer.cornerRadius = frame.size.height/2
        layer.borderColor = Colors.blueMacro?.cgColor
        layer.borderWidth = 0.5
        tintColor = Colors.black
//        textColor = Colors.blueMacro
//        font = UIFont(name: Fonts.avenirNextMedium, size: 16)
        backgroundColor = UIColor.black.withAlphaComponent(0.2)
        autocorrectionType = .no
        clipsToBounds = true
        
//        let placeholder       = self.placeholder != nil ? self.placeholder! : ""
//        let placeholderFont   = UIFont(name: Fonts.avenirNextMedium, size: 16)!
//        attributedPlaceholder = NSAttributedString(string: placeholder, attributes:
//            [NSAttributedString.Key.font: placeholderFont])
        
        
    
        
    
        
        
    }

}

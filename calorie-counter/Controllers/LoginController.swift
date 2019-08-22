//
//  LoginController.swift
//  calorie-counter
//
//  Created by Sabin on 21/08/2019.
//  Copyright © 2019 Sabin. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoginController: UIViewController, Storyboarded {
    
    weak var coordinator: AuthCoordinator?
    
    
    @IBOutlet weak var emailField: JMAuthTextField!
    @IBOutlet weak var passwordField: JMAuthTextField!
    @IBOutlet weak var toRegisterLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initToRegisterLabelInteraction()
    }
    
    
    // Actions
    @IBAction func loginBtnPressed(_ sender: Any) {
        if let emailText = emailField.text,
            let passwordText = passwordField.text {
            signInFirebase(email: emailText, password: passwordText)
        }
        
    }
    
    @objc func toRegisterLabelTapped(tapGestureRecognizer: UITapGestureRecognizer) {
//        print("sabi sabin")
        coordinator?.toRegister()
    }
    
    // Firebase Sign In
    private func signInFirebase(email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            if let error = error {
                print("Failed to sign user in with error: ", error.localizedDescription)
                self.signInError()
                return
            }
            
            print("succes")
        }
    }
    
    private func signInError() {
        let alert = UIAlertController(title: "Sign In Failed", message: "Bad Credentials", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            switch action.style{
            case .default:
                print("default")
            
            case .cancel:
                print("cancel")
            
            case .destructive:
                print("destructive")
                    }
                }
            )
        )
        self.present(alert, animated: true, completion: nil)
    }
    
    // Init
    private func initToRegisterLabelInteraction() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(toRegisterLabelTapped(tapGestureRecognizer:)))
        toRegisterLabel.isUserInteractionEnabled = true
        toRegisterLabel.addGestureRecognizer(tapGesture)
    }
    

}

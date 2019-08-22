//
//  RegisterController.swift
//  calorie-counter
//
//  Created by Sabin on 22/08/2019.
//  Copyright © 2019 Sabin. All rights reserved.
//

import UIKit
import FirebaseAuth

class RegisterController: UIViewControllerBase, Storyboarded {
    
    weak var coordinator: AuthCoordinator?

    @IBOutlet weak var emailField: JMAuthTextField!
    @IBOutlet weak var passwordField: JMAuthTextField!
    @IBOutlet weak var confirmPasswordField: JMAuthTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    // Actions
    
    @IBAction func registerBtnPressed(_ sender: Any) {
        if let emailText = emailField.text,
        let passwordText = passwordField.text,
        let confirmPasswordText = confirmPasswordField.text {
            if !emailText.isValidEmail() {
                emailError()
                return
            }
            if passwordText != confirmPasswordText {
                passwordError()
                return
            }
            registerUser(email: emailText, password: passwordText)
        }
    }
    
    // Firebase Register
    
    private func registerUser(email: String, password: String) {
        Auth.auth().createUser(withEmail: email, password: password) { (result, error) in
            if error != nil {
                self.registerError()
                return
            }
        }
    }
    
    
    private func passwordError() {
        super.showAlert(title: "Bad Password", message: "Passwords doesn't match")
    }
    
    private func emailError() {
        super.showAlert(title: "Bad Email", message: "The email provided is not valid")
    }
    
    private func registerError() {
        super.showAlert(title: "Register Error", message: "Something went wrong")
    }
}

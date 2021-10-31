//
//  LoginViewController.swift
//  TheEmployees
//
//  Created by waheedCodes on 15/08/2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: - PROPERTIES
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    private var loginViewModel = LoginViewModel()
    
    // MARK: - VIEW LIFE CYCLE

    override func viewDidLoad() {
        super.viewDidLoad()
        loginViewModel.delegate = self
    }
    
    // MARK: - METHODS
    @IBAction func didTapLoginButton(_ sender: Any) {
        
        let request = LoginRequest(userEmail: emailTextField.text,
                                   userPassword: passwordTextField.text)
        loginViewModel.loginUser(loginRequest: request)
    }
}


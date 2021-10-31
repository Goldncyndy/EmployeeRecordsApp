//
//  LoginViewController+Extensions.swift
//  TheEmployees
//
//  Created by waheedCodes on 15/08/2021.
//

import Foundation
import UIKit

extension LoginViewController: LoginViewModelDelegate {
    
    func didReceiveLoginResponse(loginResponse: LoginResponse?) {
        
        if (loginResponse?.errorMessage == nil && loginResponse?.data != nil) {
            
//            debugPrint("Moving to the employee's screen...")
          //debugPrint(loginResponse?.data?.userName)
//          let employeeVC = UIViewController()
//          employeeVC.title = loginResponse?.data?.userName
//          employeeVC.view.backgroundColor = .cyan
          
          let employeeViewController = storyboard?.instantiateViewController(withIdentifier: "EmployeeViewController") as! EmployeeViewController
                self.navigationController?.pushViewController(employeeViewController, animated: true)
          
          //self.navigationController?.pushViewController(employeeVC, animated: true)
            
        } else if (loginResponse?.errorMessage != nil) {
            
            guard let errorMessage = loginResponse?.errorMessage else {
                return
            }
            let alert = AlertService.alert(with: Constants.ErrorAlertTitle,
                                           message: errorMessage,
                                           alertStyle: .alert)
            
            self.present(alert, animated: true)
        }
    }
}

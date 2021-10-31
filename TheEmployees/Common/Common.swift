//
//  Common.swift
//  TheEmployees
//
//  Created by waheedCodes on 15/08/2021.
//

import Foundation

struct Constants {
    static let ErrorAlertTitle = "Error"
    static let OkAlertTitle = "Ok"
    static let CancelAlertTitle = "Cancel"
}

struct ApiEndpoints
{
    static let login = "https://api-dev-scus-demo.azurewebsites.net/api/User/Login"
    static let employees = "https://api-dev-scus-demo.azurewebsites.net/api/Employee/GetEmployee"
}

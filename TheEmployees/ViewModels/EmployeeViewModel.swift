//
//  EmployeeViewModel.swift
//  TheEmployees
//
//  Created by Decagon on 18/08/2021.
//

import Foundation

struct EmployeeViewModel {
  
  func getEmployeeByDepartment(departmentID: Int, completionHandler: @escaping (_ result: EmployeeResponse?) -> Void) {
    
    let userID = UserDefaultUtility.getUserID()
    let employeeRequest = EmployeeRequest(userID: userID, department: DepartmentPropertyWrapper(index: "\(departmentID)"))
    let employeeResource = EmployeeResource()
    
    employeeResource.getEmployee(employeeRequest: employeeRequest) { employeeAPIResponse in
      completionHandler(employeeAPIResponse)
    }
  }
}

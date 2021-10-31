//
//  EmployeeResource.swift
//  TheEmployees
//
//  Created by Decagon on 18/08/2021.
//

import Foundation

struct EmployeeResource {
    
    func getEmployee(employeeRequest: EmployeeRequest, completionHandler: @escaping (_ result: EmployeeResponse?) -> Void) {
        
      let employeeURL = URL(string: "\(ApiEndpoints.employees)?Department=\(employeeRequest.department)&UserId=\(employeeRequest.userID)")!
        let httpUtility = HTTPUtility()
        
      httpUtility.getAPIData(requestURL: employeeURL, resultType: EmployeeResponse.self)  { EmployeeAPIResponse in
        completionHandler(EmployeeAPIResponse)
          }
        }
    }


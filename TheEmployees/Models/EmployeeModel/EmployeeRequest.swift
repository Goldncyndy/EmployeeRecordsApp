//
//  EmployeeRequest.swift
//  TheEmployees
//
//  Created by Decagon on 18/08/2021.
//

import Foundation

@propertyWrapper
struct DepartmentPropertyWrapper {
  private var value: String
  var wrappedValue: String {
    get {
      return value == "0" ? "mobile" : "web"
    }
    set {
      value = newValue
    }
  }
  
  init(index: String) {
    value = index
  }
}

struct EmployeeRequest {
  var userID: Int
  @DepartmentPropertyWrapper var department: String
}

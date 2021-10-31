//
//  EmployeeResonse.swift
//  TheEmployees
//
//  Created by waheedCodes on 15/08/2021.
//

import Foundation

struct EmployeeResponse: Decodable {
  let errorMessage: String?
  let data: [Employee]?
    }
struct Employee: Decodable {
  let name, email, id, joining: String
}


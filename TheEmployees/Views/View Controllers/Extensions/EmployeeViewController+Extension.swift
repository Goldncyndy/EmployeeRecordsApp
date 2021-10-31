//
//  EmployeeViewController+Extension.swift
//  TheEmployees
//
//  Created by Decagon on 19/08/2021.
//

import UIKit

extension EmployeeViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return employees?.data?.count ?? 0
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//    self.employeeTableView.sizeToFit()
    guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as? EmployeeTableViewCell else {
      fatalError("Unable to dequeue Employee Table View Cell")
    }
    if let employee = employees?.data?[indexPath.row] {
      cell.setup(model: employee)
    }
    
    return cell
  }
}

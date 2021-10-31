//
//  EmployeeViewController.swift
//  TheEmployees
//
//  Created by Decagon on 18/08/2021.
//

import UIKit

class EmployeeViewController: UIViewController {
  
  @IBOutlet weak var segmentedControl: UISegmentedControl!
  @IBOutlet weak var employeeTableView: UITableView!
  
  var employees: EmployeeResponse? = nil
  let employeeViewModel: EmployeeViewModel = EmployeeViewModel()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    getEmployeeByDepartment(segmentControlIndex: 0)
  }
  
  private func getEmployeeByDepartment(segmentControlIndex: Int) {
    employeeViewModel.getEmployeeByDepartment(departmentID: segmentControlIndex) { [weak self] employeeApiResponse in
      if (employeeApiResponse != nil) {
        self?.employees = employeeApiResponse
      }
      
      DispatchQueue.main.async {
        self?.employeeTableView.reloadData()
      }
    }
  }
  
  @IBAction func didTapSegmentedControl(_ sender: UISegmentedControl) {
    getEmployeeByDepartment(segmentControlIndex: sender.selectedSegmentIndex)
  }
}



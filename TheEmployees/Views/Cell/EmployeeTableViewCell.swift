//
//  EmployeeTableViewCell.swift
//  TheEmployees
//
//  Created by Decagon on 18/08/2021.
//

import UIKit

class EmployeeTableViewCell: UITableViewCell {
    
  @IBOutlet weak var employeeNameLabel: UILabel!
  
  override class func awakeFromNib() {
    super.awakeFromNib()
  }
  
  override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)
  }
  
  func setup(model: Employee) {
    employeeNameLabel.text = model.name
  }
}

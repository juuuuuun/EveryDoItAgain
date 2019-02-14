//
//  DetailViewController.swift
//  EveryDoItAgain
//
//  Created by Jun Oh on 2019-02-13.
//  Copyright © 2019 Jun Oh. All rights reserved.
//

import UIKit

protocol DetailViewControllerDelegate: AnyObject {
  func saveChanges()
}

class DetailViewController: UIViewController {

  @IBOutlet weak var detailDescriptionLabel: UILabel!

  @IBOutlet weak var priorityNumberLabel: UILabel!
  
  @IBOutlet weak var toDoDescriptionTextView: UITextView!
  
  @IBOutlet weak var isCompletedSwitch: UISwitch!
  
  weak var delegate: DetailViewControllerDelegate?
  
  @IBAction func isCompletedSwitchPressed(_ sender: UISwitch) {
    if let toDo = detailItem {
      toDo.isCompleted = sender.isOn
      delegate?.saveChanges()
    }
  }
  
  func configureView() {
    // Update the user interface for the detail item.
    if let toDo = detailItem {
      if let label = detailDescriptionLabel {
        label.text = toDo.title!.description
      }
      if let priorityLabel = priorityNumberLabel {
        priorityLabel.text = toDo.priorityNumber.description
      }
      if let toDoDescription = toDoDescriptionTextView {
        toDoDescription.text = toDo.todoDescription!.description
      }
      if let isCompleted = isCompletedSwitch {
        isCompleted.isOn = toDo.isCompleted
      }
    }
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    configureView()
  }

  var detailItem: ToDo? {
    didSet {
        // Update the view.
        configureView()
    }
  }


}


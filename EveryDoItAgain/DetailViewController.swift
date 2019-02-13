//
//  DetailViewController.swift
//  EveryDoItAgain
//
//  Created by Jun Oh on 2019-02-13.
//  Copyright © 2019 Jun Oh. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

  @IBOutlet weak var detailDescriptionLabel: UILabel!

  @IBOutlet weak var priorityNumberLabel: UILabel!
  
  @IBOutlet weak var toDoDescriptionTextView: UITextView!
  
  func configureView() {
    // Update the user interface for the detail item.
    if let detail = detailItem {
      if let label = detailDescriptionLabel {
        label.text = detail.title!.description
      }
      if let priorityLabel = priorityNumberLabel {
        priorityLabel.text = detail.priorityNumber.description
      }
      if let toDoDescription = toDoDescriptionTextView {
        toDoDescription.text = detail.todoDescription!.description
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


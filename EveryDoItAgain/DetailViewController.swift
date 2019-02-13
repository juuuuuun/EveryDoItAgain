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


  func configureView() {
    // Update the user interface for the detail item.
    if let detail = detailItem {
        if let label = detailDescriptionLabel {
            label.text = detail.timestamp!.description
        }
    }
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    configureView()
  }

  var detailItem: Event? {
    didSet {
        // Update the view.
        configureView()
    }
  }


}


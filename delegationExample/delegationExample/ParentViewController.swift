//
//  ViewController.swift
//  delegationExample
//
//  Created by Michael Simon on 10/17/15.
//  Copyright © 2015 Michael Simon. All rights reserved.
//

import UIKit

protocol ParentProtocol : class {
  func method(selectedString: String)
}

class ParentViewController: UIViewController {
  
  @IBOutlet var label: UILabel?
  var childTableViewController = ChildTableViewController()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    let childContainer = self.childViewControllers[0]
    childTableViewController = childContainer.childViewControllers[0] as! ChildTableViewController
    childTableViewController.delegate = self
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
}

extension ParentViewController : ParentProtocol {
  func method(selectedString: String) {
    label?.text = selectedString
  }
}


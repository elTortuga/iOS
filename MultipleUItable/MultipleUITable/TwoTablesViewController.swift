//
//  TwoTablesViewController.swift
//  programmaticallyTables
//
//  Created by Michael Simon on 10/29/15.
//  Copyright © 2015 Michael Simon. All rights reserved.
//

import UIKit

class TwoTablesViewController: UIViewController , UITableViewDataSource, UITableViewDelegate {
  
  var tableViewA: UITableView = UITableView()
  var tableViewB: UITableView = UITableView()
  
  var colors: [String] = ["red", "blue", "green"]
  var shapes: [String] = ["triangle", "circle", "square"]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    tableViewA.frame       = CGRectMake(0, 50, 320, 200)
    tableViewA.delegate    = self
    tableViewA.dataSource  = self
    tableViewA.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cellTableViewA")
    self.view.addSubview(tableViewA)
    
    tableViewB.frame       = CGRectMake(0, 250, 320, 200)
    tableViewB.delegate    = self
    tableViewB.dataSource  = self
    tableViewB.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cellTableViewB")
    self.view.addSubview(tableViewB)
    
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    if tableView == tableViewA {
      return self.colors.count
    }
    return self.shapes.count
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    if tableView == tableViewA {
      let cell = tableView.dequeueReusableCellWithIdentifier("cellTableViewA") as UITableViewCell!
      cell.textLabel?.text = self.colors[indexPath.row]
      return cell
    }
    let cell = tableView.dequeueReusableCellWithIdentifier("cellTableViewB") as UITableViewCell!
    cell.textLabel?.text = self.shapes[indexPath.row]
    return cell
  }
  
  func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    if tableView == tableViewA {
      print("You selected cell #\(indexPath.row) in the colors list")
    } else {
      print("You selected cell #\(indexPath.row) in the shapes list")
    }
  }
}


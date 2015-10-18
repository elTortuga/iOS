//
//  ViewController.swift
//  DateTimeExample
//
//  Created by Michael Simon on 10/17/15.
//  Copyright © 2015 Michael Simon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet var dateLabel: UILabel!
  @IBOutlet var timeLabel: UILabel!
  @IBOutlet var dateTimeLabel: UILabel!
  @IBOutlet var combinedDateTime: UILabel!
  
  @IBOutlet var datePicker: UIDatePicker!
  @IBOutlet var timePicker: UIDatePicker!
  @IBOutlet var dateTimePicker: UIDatePicker!
  
  let dateFormatter = NSDateFormatter()
  let timeFormatter = NSDateFormatter()
  let dateTimeFormatter = NSDateFormatter()
  
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  @IBAction func datePickerChanged(sender: AnyObject) {
    dateFormatter.dateStyle = NSDateFormatterStyle.LongStyle
    dateLabel.text = dateFormatter.stringFromDate(datePicker.date)
    setDateTime()
  }
  
  @IBAction func timePickerChanged(sender: AnyObject) {
    timeFormatter.timeStyle = NSDateFormatterStyle.MediumStyle
    timeLabel.text = timeFormatter.stringFromDate(timePicker.date)
    setDateTime()
  }
  
  
  // Does not allow for user to pick year
  @IBAction func dateTimePickerChanged(sender: AnyObject) {
    dateTimeFormatter.dateStyle = NSDateFormatterStyle.ShortStyle
    timeFormatter.timeStyle = NSDateFormatterStyle.ShortStyle
    dateTimeLabel.text = dateTimeFormatter.stringFromDate(dateTimePicker.date) + " " + timeFormatter.stringFromDate(dateTimePicker.date)
  }
  
  func setDateTime() {
    combinedDateTime.text = dateLabel.text! + " " + timeLabel.text!
  }
}


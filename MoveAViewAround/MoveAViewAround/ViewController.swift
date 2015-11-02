//
//  ViewController.swift
//  MoveAViewAround
//
//  Created by Michael Simon on 11/1/15.
//  Copyright © 2015 Michael Simon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  let BUTTON_WIDTH:CGFloat = 150.0
  let BUTTON_HEIGHT:CGFloat = 50.0
  
  let COLOR_VIEW_WIDTH:CGFloat = 50.0
  let COLOR_VIEW_HEIGHT:CGFloat = 100.0
  
  let redView:UIView = UIView()
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    redView.frame = CGRect(x: 5, y: 20, width: COLOR_VIEW_WIDTH, height: COLOR_VIEW_HEIGHT)
    redView.backgroundColor = UIColor.redColor()
    self.view.addSubview(redView)
    
    let moveButtonDown:UIButton = UIButton(frame: CGRect(x: self.view.frame.width/2 - BUTTON_WIDTH/2, y: 300, width: BUTTON_WIDTH, height: BUTTON_HEIGHT))
    moveButtonDown.setTitle("Move It Down", forState: UIControlState.Normal)
    moveButtonDown.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
    moveButtonDown.addTarget(self, action: "moveViewDown:", forControlEvents: .TouchUpInside)
    self.view.addSubview(moveButtonDown)
    
    let moveButtonUp:UIButton = UIButton(frame: CGRect(x: self.view.frame.width/2 - BUTTON_WIDTH/2, y: 360, width: BUTTON_WIDTH, height: BUTTON_HEIGHT))
    moveButtonUp.setTitle("Move It Up", forState: UIControlState.Normal)
    moveButtonUp.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
    moveButtonUp.addTarget(self, action: "moveViewUp:", forControlEvents: .TouchUpInside)
    self.view.addSubview(moveButtonUp)
    
    let moveButtonRight:UIButton = UIButton(frame: CGRect(x: self.view.frame.width/2 - BUTTON_WIDTH/2, y: 420, width: BUTTON_WIDTH, height: BUTTON_HEIGHT))
    moveButtonRight.setTitle("Move It Right", forState: UIControlState.Normal)
    moveButtonRight.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
    moveButtonRight.addTarget(self, action: "moveViewRight:", forControlEvents: .TouchUpInside)
    self.view.addSubview(moveButtonRight)
    
    let moveButtonLeft:UIButton = UIButton(frame: CGRect(x: self.view.frame.width/2 - BUTTON_WIDTH/2, y: 480, width: BUTTON_WIDTH, height: BUTTON_HEIGHT))
    moveButtonLeft.setTitle("Move It Left", forState: UIControlState.Normal)
    moveButtonLeft.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
    moveButtonLeft.addTarget(self, action: "moveViewLeft:", forControlEvents: .TouchUpInside)
    self.view.addSubview(moveButtonLeft)
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  func moveViewDown(sender: AnyObject) {
    var newFrame = redView.frame
    newFrame.origin.y = newFrame.origin.y + COLOR_VIEW_HEIGHT
    
    UIView.animateWithDuration(1.0, animations: {
      self.redView.frame = newFrame
    })
  }
  
  func moveViewUp(sender: AnyObject) {
    var newFrame = redView.frame
    newFrame.origin.y = newFrame.origin.y - COLOR_VIEW_HEIGHT
    
    UIView.animateWithDuration(1.0, animations: {
      self.redView.frame = newFrame
    })
  }
  
  func moveViewRight(sender: AnyObject) {
    var newFrame = redView.frame
    newFrame.origin.x = newFrame.origin.x + COLOR_VIEW_WIDTH
    
    UIView.animateWithDuration(1.0, animations: {
      self.redView.frame = newFrame
    })
  }
  
  func moveViewLeft(sender: AnyObject) {
    var newFrame = redView.frame
    newFrame.origin.x = newFrame.origin.x - COLOR_VIEW_WIDTH
    
    UIView.animateWithDuration(1.0, animations: {
      self.redView.frame = newFrame
    })
  }
}
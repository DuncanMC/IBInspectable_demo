//
//  ViewController.swift
//  SwiftTestProject
//
//  Created by Duncan Champney on 4/21/15.
//  Copyright (c) 2015 Duncan Champney. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
  
  @IBOutlet weak var labelInputField: UITextField!
  @IBOutlet weak var displayLabel: UILabel!
  
  var labelText: String = ""
    {
    didSet
    {
      labelInputField.text = labelText
      displayLabel.text = labelText
    }
  }
  
  override func viewDidLoad()
  {
    super.viewDidLoad()
    labelText = "Label text"
  }
  
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  //-------------------------------------------------------------------------------------------------------
  // MARK: - UITextFieldDelegate methods -
  //-------------------------------------------------------------------------------------------------------
  
  func textFieldShouldBeginEditing(textField: UITextField) -> Bool
  {
    return true
  }
  
  //-------------------------------------------------------------------------------------------------------
  
  func textFieldShouldEndEditing(textField: UITextField) -> Bool
  {
    textField.resignFirstResponder()
    return true
  }
  
  //-------------------------------------------------------------------------------------------------------
  
  func textFieldDidEndEditing(textField: UITextField)
  {
    labelText = textField.text
  }
  
  //-------------------------------------------------------------------------------------------------------
  
  func textFieldShouldReturn(textField: UITextField) -> Bool
  {
    textField.resignFirstResponder()
    return true
  }
  
}


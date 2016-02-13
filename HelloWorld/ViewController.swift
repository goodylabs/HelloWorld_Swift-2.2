//
//  ViewController.swift
//  HelloWorld
//
//  Created by Grzegorz Błaszczyk on 13.02.2016.
//  Copyright (c) 2016 ___goodylabs___. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var nameInput: UITextField!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var ageInput: UITextField!
  
    override func viewDidLoad() {
      super.viewDidLoad()
      // Do any additional setup after loading the view, typically from a nib.
    }


    override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
      // Dispose of any resources that can be recreated.
    }

    @IBAction func editedNameInput(nameEntered: UITextField) {
      if (nameEntered.text?.characters.count > 3) {
        self.nameLabel.text = String("Hi " + nameEntered.text! + "!")
        disableNameSection();
        enableAgeSection();
      }
    }

    @IBAction func editedAgeInput(ageEntered: UITextField) {
      self.ageLabel.text = String("You are " + ageEntered.text! + " years old!")
      self.ageInput.hidden = true
    }
  
    func disableNameSection() {
      self.nameInput.hidden = true
    }
  
    func enableAgeSection() {
      self.ageLabel.enabled = true
      self.ageInput.enabled = true
      self.ageLabel.hidden = false
      self.ageInput.hidden = false
    }
  
}

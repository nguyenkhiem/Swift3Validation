//
//  ViewController.swift
//  Validator
//
//  Created by Jeff Potter on 11/20/14.
//  Copyright (c) 2014 jpotts18. All rights reserved.
//

import Foundation
import UIKit
import SwiftValidator

class ViewController: UIViewController , ValidationDelegate, UITextFieldDelegate {

    // TextFields
    @IBOutlet weak var fullNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var zipcodeTextField: UITextField!
    @IBOutlet weak var emailConfirmTextField: UITextField!
    
    // Error Labels
    @IBOutlet weak var fullNameErrorLabel: UILabel!
    @IBOutlet weak var emailErrorLabel: UILabel!
    @IBOutlet weak var phoneNumberErrorLabel: UILabel!
    @IBOutlet weak var zipcodeErrorLabel: UILabel!
    @IBOutlet weak var emailConfirmErrorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
    }

    @IBAction func submitTapped(_ sender: AnyObject) {
        print("Validating...")
       
    }

    // MARK: ValidationDelegate Methods
    
    func validationSuccessful() {
        print("Validation Success!")
        let alert = UIAlertController(title: "Success", message: "You are validated!", preferredStyle: UIAlertControllerStyle.alert)
        let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(defaultAction)
        self.present(alert, animated: true, completion: nil)
    
    }
    func validationFailed(_ errors:[UITextField:ValidationError]) {
        print("Validation FAILED!")
    }
    
    func hideKeyboard(){
        self.view.endEditing(true)
    }
    
    // MARK: Validate single field
    // Don't forget to use UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
                  return true
    }

}

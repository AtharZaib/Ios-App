//
//  SignInViewController.swift
//  LoginSignup
//
//  Created by NAVTTC Students on 10/10/2018.
//  Copyright © 2018 Test. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var UserNameTextField: UITextField!
    
    @IBOutlet weak var UserPasswordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    @IBAction func SignInButtonPressed(_ sender: Any) {
        print("Sign In button Pressed !!!")
    }
    
    @IBAction func RegisterNewButtonPressed(_ sender: Any) {
        print("Register New Button Pressed !!!")
        
        let registerViewController =
        self.storyboard?.instantiateViewController(withIdentifier: "RegisterViewController") as! RegisterViewController
        
        self.present(registerViewController,animated: true)
        
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        UserNameTextField.resignFirstResponder()
        UserPasswordTextField.resignFirstResponder()
        return false
    }
    
    


}

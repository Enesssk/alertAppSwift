//
//  ViewController.swift
//  AlertApp
//
//  Created by Enes Kala on 24.02.2024.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var userNameText: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    
    
    @IBOutlet weak var passwordAgainText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func signUpClicked(_ sender: Any) {
        
        if (userNameText.text == ""){
            makeAlert(title: "Error", message: "Username not found")
        }else if(passwordText.text == ""){
            makeAlert(title: "Error", message: "Password not found")
        }else if (passwordAgainText.text != passwordText.text){
            makeAlert(title: "Error", message: "Passwords do not match ")
        }else{
            makeAlert(title: "Success", message: "User is correct")
        }
        
        
        
    }
    
    
    func makeAlert(title : String, message : String) {
        
        
        let alert = UIAlertController(title: title , message: message , preferredStyle: UIAlertController.Style.alert)
        
        let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        
        self.present(alert, animated: true, completion: nil)
    }
    
}


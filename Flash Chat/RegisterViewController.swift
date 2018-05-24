//
//  RegisterViewController.swift
//  Flash Chat
//
//  This is the View Controller which registers new users with Firebase
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {

    
    //Pre-linked IBOutlets

    @IBOutlet var emailTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

  
    @IBAction func registerPressed(_ sender: AnyObject) {
        Auth.auth().createUser(withEmail: emailTextfield.text!, password: passwordTextfield.text!) {
            (user, error) in
            
            if error != nil {
                print(error!)
            } else {
                self.performSegue(withIdentifier: "goToChat", sender: self)
            }
        }
    }
    
    /*
     
     class Firebase {
        func createUser(username: String, password: String, completion: (Boolean, Int) -> Void) {
            // does something time consuming
     
            var isSuccess = true
            var userId = 123
            completion(isSuccess, userId)
         }
     }
 
     class MyApp {
     
         func registerButtonPressed() {
            let firebase = Firebase()
     
         firebase.createUser(username: "Chase", password: "1234", completion: { (isSuccess, userId) in {
            print("registration is successful: \(isSuccess)")
            print("user id is: \(userId)")
         })
     
         firebase.createUser(username: "Chase", password: "1234") {
            (isSuccess, userId) in
                print("registration is successful: \(isSuccess)")
                print("user id is: \(userId)")
         }
     }
    
     let myApp = MyApp()
     myApp.registerButtonPressed()
    */
}

//
//  NewUserViewController.swift
//  A252HelloFirebaseEmailLogin
//
//  Created by 申潤五 on 2025/3/23.
//

import UIKit
import FirebaseAuth

class NewUserViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var mimaTextField: UITextField!
    
    @IBOutlet weak var mima2TextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "New User"
    }
    

    @IBAction func createUser(_ sender: Any) {
        let account = emailTextField.text ?? ""
        let mima1 = mimaTextField.text ?? ""
        let mima2 = mima2TextField.text ?? ""
        
        if mima1 != mima2 {
            let alertController = UIAlertController(title: "Error", message: "Password 必需相同", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "OK", style: .default)
            present(alertController, animated: true)
        }else{
            Auth.auth().createUser(withEmail: account, password: mima1)
        }
        
    }

}

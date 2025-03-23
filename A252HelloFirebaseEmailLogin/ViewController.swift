//
//  ViewController.swift
//  A252HelloFirebaseEmailLogin
//
//  Created by 申潤五 on 2025/3/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goNewUser(_ sender: Any) {
        performSegue(withIdentifier: "goNewUser", sender: self)
    }
    
}


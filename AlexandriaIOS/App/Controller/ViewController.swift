//
//  ViewController.swift
//  AlexandriaIOS
//
//  Created by Esteban Hernandez on 5/7/20.
//  Copyright © 2020 Esteban Hernandez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtEmail.text = "py@email.com"
        txtPassword.text = "123"
    }

    @IBAction func onLogin(_ sender: UIButton) {
        var auth : Auth
        auth = Auth()
        auth.CheckLogin(email: txtEmail.text!, password: txtPassword.text!)
    }
    

}


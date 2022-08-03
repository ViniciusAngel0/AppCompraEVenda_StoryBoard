//
//  LoginView.swift
//  CompraEVenda-StoryBoard
//
//  Created by Vinicius Angelo on 02/08/22.
//

import Foundation
import UIKit

class LoginView: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButton.layer.cornerRadius = 5
        loginButton.layer.borderWidth = 1
        loginButton.layer.borderColor = UIColor.tintColor.cgColor
        
    }
    
}

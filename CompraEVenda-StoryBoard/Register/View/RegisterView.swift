//
//  RegisterView.swift
//  CompraEVenda-StoryBoard
//
//  Created by Vinicius Angelo on 02/08/22.
//

import Foundation
import UIKit

class RegisterView: UIViewController {
    
    let registerController = RegisterController()
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var cpfTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
  
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        borderButton(button: registerButton)
        
    }
 
    @IBAction func registerButton(_ sender: UIButton) {
        
        guard let name = nameTextField.text, let email = emailTextField.text, let cpf = cpfTextField.text, let age = ageTextField.text, let password = passwordTextField.text, let confirmPassword = confirmPasswordTextField.text, !name.isEmpty, !email.isEmpty, !cpf.isEmpty, !age.isEmpty, !password.isEmpty, !confirmPassword.isEmpty else {
            
            let alert = UIAlertController(title: "Erro", message: "Preencha todos os campos", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default))
            self.present(alert, animated: true, completion: nil)
            
            return
        }
        
        if password == confirmPassword {
            let controllerRegister = RegisterController()
            controllerRegister.createNewUser(email: email, password: password)
            navigationController?.popViewController(animated: true)
            
        }
    }
}

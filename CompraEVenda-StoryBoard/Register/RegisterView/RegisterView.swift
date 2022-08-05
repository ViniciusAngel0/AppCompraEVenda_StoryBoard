//
//  RegisterView.swift
//  CompraEVenda-StoryBoard
//
//  Created by Vinicius Angelo on 02/08/22.
//

import Foundation
import UIKit

class RegisterView: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var cpfTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
  
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerButton.layer.cornerRadius = 5
        registerButton.layer.borderWidth = 1
        registerButton.layer.borderColor = UIColor.tintColor.cgColor
        
    }
 
    @IBAction func registerButton(_ sender: UIButton) {
        
        // Criando o alerta
        let alert = UIAlertController(title: "CADASTRO", message: "Cadastro realizado com sucesso!", preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        // Mostrando o alerta na tela
        self.present(alert, animated: true, completion: nil)
        
    }
    
   
}

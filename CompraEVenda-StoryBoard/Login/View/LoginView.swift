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
        
       borderButton(button: loginButton)
        
    }
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        
        
        
    }
    
    @IBAction func resetButton(_ sender: UIButton) {
        
        let alert = UIAlertController(title: "Erro ao entrar", message: "Digite seu CPF", preferredStyle: .alert)
        
        alert.addTextField{ field in
            field.placeholder = "CPF"
            field.returnKeyType = .done
            field.keyboardType = .numberPad
        }
        
        alert.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { UIAlertAction
            in
            
        }))
        present(alert, animated: true)
    }
}

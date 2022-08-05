//
//  RegisterProductView.swift
//  CompraEVenda-StoryBoard
//
//  Created by Vinicius Angelo on 05/08/22.
//

import Foundation
import UIKit

class RegisterProductView: UIViewController {
    
    @IBOutlet weak var registerButton: UIButton!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupElements()
    }
    
    @IBAction func registerButtonTapped(_ sender: UIButton) {

        

    }
    
    func setupElements() {
        
        registerButton.backgroundColor = .systemBackground
        registerButton.layer.cornerRadius = 5
        registerButton.layer.borderWidth = 1
        registerButton.layer.borderColor = UIColor.tintColor.cgColor
        
    }
}

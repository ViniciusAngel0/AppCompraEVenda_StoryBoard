//
//  FirstScreen.swift
//  CompraEVenda-StoryBoard
//
//  Created by Vinicius Angelo on 28/07/22.
//

import Foundation
import UIKit

class FirstScreen: UIViewController {
    
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerButton.clipsToBounds = true
        registerButton.layer.cornerRadius = 5

        loginButton.layer.cornerRadius = 5
        loginButton.layer.borderWidth = 1
        loginButton.layer.borderColor = UIColor.tintColor.cgColor
        loginButton.backgroundColor = nil
    }
    
//    func configButton() {
//
//        let button = UIButton()
//        button.layer.cornerRadius = 5
//        button.layer.borderWidth = 1
//        button.layer.borderColor = UIColor.systemCyan.cgColor
//        button.backgroundColor = nil
//
//    }
    
}

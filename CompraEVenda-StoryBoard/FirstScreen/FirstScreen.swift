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

        borderButton(button: loginButton)
    }
    
}

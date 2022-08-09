//
//  SetupElements.swift
//  CompraEVenda-StoryBoard
//
//  Created by Vinicius Angelo on 05/08/22.
//

import Foundation
import UIKit


func borderButton(button: UIButton) {
    
    button.backgroundColor = .systemBackground
    button.layer.cornerRadius = 5
    button.layer.borderWidth = 1
    button.layer.borderColor = UIColor.tintColor.cgColor
    
}

func menuView(view: UIView) {
    
    view.backgroundColor = .systemBackground
    view.layer.cornerRadius = 15
    view.layer.borderWidth = 1
    view.layer.borderColor = UIColor.tintColor.cgColor
    
}

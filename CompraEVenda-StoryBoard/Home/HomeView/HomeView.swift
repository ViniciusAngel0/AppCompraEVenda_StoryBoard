//
//  HomeView.swift
//  CompraEVenda-StoryBoard
//
//  Created by Vinicius Angelo on 03/08/22.
//

import Foundation
import UIKit

class HomeView: UIViewController {
    
    
    
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var cnpjLabel: UILabel!
    @IBOutlet weak var notificationButton: UIButton!
    @IBOutlet weak var balanceInView: UIView!
    @IBOutlet weak var balanceOutView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupConfig()
        setupContraints()
        
    }
    
    
    
    func setupContraints() {
        
        NSLayoutConstraint.activate([
            
            
            balanceInView.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 40),
            balanceInView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            balanceInView.trailingAnchor.constraint(equalTo: view.centerXAnchor, constant: -10),
            balanceInView.heightAnchor.constraint(equalToConstant: 80),
            
            balanceOutView.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 40),
            balanceOutView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            balanceOutView.leadingAnchor.constraint(equalTo: view.centerXAnchor, constant: 10),
            balanceOutView.heightAnchor.constraint(equalToConstant: 80),
        ])
        
    }
    
    
    func setupConfig() {
        
        balanceInView.translatesAutoresizingMaskIntoConstraints = false
        balanceInView.backgroundColor = .systemBackground
        balanceInView.layer.cornerRadius = 15
        balanceInView.layer.borderColor = UIColor.green.cgColor
        balanceInView.layer.borderWidth = 1
        
        balanceOutView.translatesAutoresizingMaskIntoConstraints = false
        balanceOutView.backgroundColor = .systemBackground
        balanceOutView.layer.cornerRadius = 15
        balanceOutView.layer.borderColor = UIColor.red.cgColor
        balanceOutView.layer.borderWidth = 1
        
    }
    
    
}

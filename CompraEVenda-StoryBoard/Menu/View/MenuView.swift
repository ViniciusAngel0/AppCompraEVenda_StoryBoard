//
//  MenuView.swift
//  CompraEVenda-StoryBoard
//
//  Created by Vinicius Angelo on 04/08/22.
//

import Foundation
import UIKit

class MenuView: UIViewController {
    
    let registerClientView = RegisterClientView()
    
    
    @IBOutlet weak var superView: UIView!
    
    @IBOutlet weak var clientView: UIView!
    @IBOutlet weak var clientButton: UIButton!
    
    @IBOutlet weak var productView: UIView!
    @IBOutlet weak var productButton: UIButton!
    
    @IBOutlet weak var serviceView: UIView!
    
    @IBOutlet weak var requestView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configElements()
        setupContraints()
        
    }
    
    @IBAction func clienteButtonTapped(_ sender: UIButton) {
        
        // Criando o alerta
        let alert = UIAlertController(title: "CLIENTE", message: "Selecione uma opção", preferredStyle: .actionSheet)
        
        let action1: UIAlertAction = UIAlertAction(title: "Cadastrar", style: .default) {
            (action) in
            self.performSegue(withIdentifier: "registerClient", sender: nil)
        }
        
        let action2: UIAlertAction = UIAlertAction(title: "Pesquisar", style: .default) {
            (action) in
            self.performSegue(withIdentifier: "searchClient", sender: nil)
        }
        
        let action3: UIAlertAction = UIAlertAction(title: "Cancelar", style: .destructive) {
            (action) in
        }
        
        // Mostrando o alerta na tela
        alert.addAction(action1)
        alert.addAction(action2)
        alert.addAction(action3)
        self.present(alert, animated: true, completion: nil)
        
    }
    
    
    @IBAction func productButtonTapped(_ sender: UIButton) {
        
        // Criando o alerta
        let alert = UIAlertController(title: "PRODUTO", message: "Selecione uma opção", preferredStyle: .actionSheet)
        
        let action1: UIAlertAction = UIAlertAction(title: "Cadastrar", style: .default) {
            (action) in
            self.performSegue(withIdentifier: "registerProduct", sender: nil)
        }
        
        let action2: UIAlertAction = UIAlertAction(title: "Pesquisar", style: .default) {
            (action) in
            self.performSegue(withIdentifier: "searchProduct", sender: nil)
        }
        
        let action3: UIAlertAction = UIAlertAction(title: "Cancelar", style: .destructive) {
            (action) in
        }
        
        // Mostrando o alerta na tela
        alert.addAction(action1)
        alert.addAction(action2)
        alert.addAction(action3)
        self.present(alert, animated: true, completion: nil)
        
    }
    
    
    func setupContraints() {
        
        NSLayoutConstraint.activate([
            
            clientView.topAnchor.constraint(equalTo: superView.topAnchor, constant: 30),
            clientView.leadingAnchor.constraint(equalTo: superView.leadingAnchor, constant: 20),
            clientView.trailingAnchor.constraint(equalTo: superView.centerXAnchor, constant: -10),
            clientView.heightAnchor.constraint(equalToConstant: 80),
            
            productView.topAnchor.constraint(equalTo: superView.topAnchor, constant: 30),
            productView.trailingAnchor.constraint(equalTo: superView.trailingAnchor, constant: -20),
            productView.leadingAnchor.constraint(equalTo: superView.centerXAnchor, constant: 10),
            productView.heightAnchor.constraint(equalToConstant: 80),
            
            serviceView.topAnchor.constraint(equalTo: clientView.bottomAnchor, constant: 20),
            serviceView.leadingAnchor.constraint(equalTo: superView.leadingAnchor, constant: 20),
            serviceView.trailingAnchor.constraint(equalTo: superView.centerXAnchor, constant: -10),
            serviceView.heightAnchor.constraint(equalToConstant: 80),
            
            requestView.topAnchor.constraint(equalTo: productView.bottomAnchor, constant: 20),
            requestView.trailingAnchor.constraint(equalTo: superView.trailingAnchor, constant: -20),
            requestView.leadingAnchor.constraint(equalTo: superView.centerXAnchor, constant: 10),
            requestView.heightAnchor.constraint(equalToConstant: 80),
            
        ])
    }
    
    func configElements() {
        
        clientView.backgroundColor = .systemBackground
        clientView.layer.cornerRadius = 15
        clientView.layer.borderWidth = 1
        clientView.layer.borderColor = UIColor.purple.cgColor
        
        productView.backgroundColor = .systemBackground
        productView.layer.cornerRadius = 15
        productView.layer.borderWidth = 1
        productView.layer.borderColor = UIColor.orange.cgColor
        
        serviceView.backgroundColor = .systemBackground
        serviceView.layer.cornerRadius = 15
        serviceView.layer.borderWidth = 1
        serviceView.layer.borderColor = UIColor.yellow.cgColor
        
        requestView.backgroundColor = .systemBackground
        requestView.layer.cornerRadius = 15
        requestView.layer.borderWidth = 1
        requestView.layer.borderColor = UIColor.systemMint.cgColor
        
    }
}

//
//  MenuView.swift
//  CompraEVenda-StoryBoard
//
//  Created by Vinicius Angelo on 04/08/22.
//

import Foundation
import UIKit

class MenuView: UIViewController {
    
    
    @IBOutlet weak var superView: UIView!
    @IBOutlet weak var clientView: UIView!
    @IBOutlet weak var clientButton: UIButton!
    
    @IBOutlet weak var productView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configElements()
        setupContraints()
        
    }
    
    @IBAction func clienteButtonTapped(_ sender: UIButton) {
        
        // Criando o alerta
        let alert = UIAlertController(title: "Cliente", message: "Selecione uma opção", preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "Cadastrar", style: UIAlertAction.Style.default, handler: nil))
        alert.addAction(UIAlertAction(title: "Pesquisar", style: UIAlertAction.Style.default, handler: nil))
        alert.addAction(UIAlertAction(title: "Cancelar", style: UIAlertAction.Style.destructive, handler: nil))
        
        // Mostrando o alerta na tela
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
        
    }
}

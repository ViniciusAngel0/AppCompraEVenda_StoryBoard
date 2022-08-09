//
//  RegisterController.swift
//  CompraEVenda-StoryBoard
//
//  Created by Vinicius Angelo on 09/08/22.
//

import Foundation
import UIKit
import CoreData

class RegisterController: UIViewController {
    
    func createNewUser(email: String, password: String){
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else{return}
        
        let managedContext = appDelegate.persistentContainer.viewContext
        
        let entity = NSEntityDescription.entity(forEntityName: "NewUser", in: managedContext)!
        
        let newUser = NSManagedObject(entity: entity, insertInto: managedContext)
        newUser.setValue(email, forKey: "email")
        newUser.setValue(password, forKey: "password")
        
        do {
            try managedContext.save()
            print(newUser)
        } catch {
            let alert = UIAlertController(title: "Cadastro", message: "Não foi possível realizar seu cadastro, verifique se as informações estão corretas", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
}

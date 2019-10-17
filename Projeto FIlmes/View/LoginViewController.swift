//
//  LoginViewController.swift
//  Projeto FIlmes
//
//  Created by Renê Xavier on 19/09/19.
//  Copyright © 2019 IESB. All rights reserved.
//

import UIKit

class LoginViewController: UITableViewController {

    @IBOutlet var emailTextField: TextFieldComLinhaEmBaixo!
    
    @IBOutlet var senhaTextField: TextFieldComLinhaEmBaixo!

    @IBAction func executarLogin(_ sender: Any) {
        guard let email = emailTextField.text,
            !email.isEmpty,
            let senha = senhaTextField.text,
            !senha.isEmpty else {
            
            let alert = UIAlertController(title: "Erro", message: "Preencha os campos", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .cancel) { (alert) in
                self.dismiss(animated: true, completion: nil)
            }
            alert.addAction(action)
            self.present(alert, animated: true, completion: nil)
            return
        }
        
        print(email)
        print(senha)
//        conexao com o servidor
        UserDefaults.standard.set(true, forKey: "UsuarioLogado")
        
        let usuarioLogado = NSNotification.Name(rawValue: "usuarioLogado")
        NotificationCenter.default.post(name: usuarioLogado, object: nil)
    }
}

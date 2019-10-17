//
//  MapaViewController.swift
//  Projeto FIlmes
//
//  Created by Renê Xavier on 19/09/19.
//  Copyright © 2019 IESB. All rights reserved.
//

import UIKit

class MapaViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func executarLogout(_ sender: Any) {
        UserDefaults.standard.set(false, forKey: "UsuarioLogado")
        
        let logoutName = NSNotification.Name("usuarioLogout")
        NotificationCenter.default.post(name: logoutName, object: nil)
    }
}

//
//  CartazTableViewController.swift
//  Projeto FIlmes
//
//  Created by Renê Xavier on 26/09/19.
//  Copyright © 2019 IESB. All rights reserved.
//

import UIKit

class CartazTableViewController: UITableViewController {
    var controller = FilmesCartazController()

    override func viewDidLoad() {
        super.viewDidLoad()
        let cellXib = UINib(nibName: "MovieTableViewCell", bundle: nil)
        tableView.register(cellXib, forCellReuseIdentifier: "filmeCell")
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return controller.qtdFilmes
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellXib = tableView.dequeueReusableCell(withIdentifier: "filmeCell")
        guard let cell = cellXib as? MovieTableViewCell else { return UITableViewCell() }
        cell.titulo.text = controller.nome(paraFilmeEm: indexPath.row)
        cell.tagline.text = controller.tagline(paraFilmeEm: indexPath.row)
        if let poster = controller.nomePoster(paraFilmeEm: indexPath.row) {
            cell.poster.image = UIImage(named: poster)
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detalheViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "detalheVC") as? DetalheTableViewController
        if let dvc = detalheViewController {
            dvc.filme = controller.filme(index: indexPath.row)
            self.navigationController?.pushViewController(dvc, animated: true)
        }
    }
}


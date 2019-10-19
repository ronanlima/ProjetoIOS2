//
//  FavoritosTableViewController.swift
//  Projeto FIlmes
//
//  Created by Ronan Lima on 03/10/19.
//  Copyright © 2019 IESB. All rights reserved.
//

import UIKit

class FavoritosTableViewController: UITableViewController {
    var controller = FilmesFavoritosController()
    @IBOutlet var headerView: UIView!
    @IBOutlet weak var userAvatar: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let cellXib = UINib(nibName: "MovieTableViewCell", bundle: nil)
        tableView.register(cellXib, forCellReuseIdentifier: "cell")
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        userAvatar.image = UIImage(named: "user")
        return headerView
    }
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 200
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return controller.qtdFilmes
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellXib = tableView.dequeueReusableCell(withIdentifier: "cell")
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
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

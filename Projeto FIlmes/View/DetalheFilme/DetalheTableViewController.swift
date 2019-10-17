//
//  DetalheTableViewController.swift
//  Projeto FIlmes
//
//  Created by Renê Xavier on 26/09/19.
//  Copyright © 2019 IESB. All rights reserved.
//

import UIKit

class DetalheFilmeController {
    var filme: Filme?
    var filmesRelacionados: [Filme] = []
    
    var quantidadeCelulas: Int {
        return 3 + filmesRelacionados.count
    }
    
    init(_ f: Filme?) {
        self.filme = f
        filmesRelacionados.append(Filme("Avatar","A aventura começa", nil))
        filmesRelacionados.append(Filme("Avatar 2 ","A aventura continua", nil))
    }
    
    func initDetalhes() {
        filme?.ano = "2019"
        filme?.genero = "ação/luta/aventura/animação"
        filme?.descricao = "Melhor filme de 2019"
        filme?.nota = "9.9"
        filme?.duracao = "3h03m"
    }
    
    func informacoesGeraisFilme(_ filme: Filme?) -> String? {
        if let filme = filme, let nota = filme.nota, let duracao = filme.duracao, let ano = filme.ano {
            return nota + " " + duracao + " " + ano
        }
        return nil
    }
    
    var descricaoFilme: String? {
        return filme?.descricao
    }
    
    var generoFilme: String? {
        return filme?.genero
    }
}

class DetalheTableViewController: UITableViewController {

    var controller : DetalheFilmeController?
    var filme: Filme?
    
    // MARK: ciclo de vida
    override func viewDidLoad() {
        super.viewDidLoad()
        controller = DetalheFilmeController(filme)
        let cellXib = UINib(nibName: "MovieTableViewCell", bundle: nil)
        tableView.register(cellXib, forCellReuseIdentifier: "filmeCell")
        // carregar informacoes do filme
        controller?.initDetalhes()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return controller?.quantidadeCelulas ?? 0
    }
    
    fileprivate func criarCelulaFilmeXib(_ filme: Filme?, _ tableView: UITableView) -> UITableViewCell {
        if let filme = filme, let cell = tableView.dequeueReusableCell(withIdentifier: "filmeCell") as? MovieTableViewCell {
            cell.titulo.text = filme.nome
            cell.tagline.text = controller?.informacoesGeraisFilme(filme)
            if let poster = filme.poster {
                cell.poster.image = UIImage(named: poster)
            }
            return cell
        }
        return UITableViewCell()
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            return criarCelulaFilmeXib(filme, tableView)
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "taglineCellID")
            cell?.textLabel?.text = filme?.tagline
            return cell ?? UITableViewCell()
        case 2:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "detalheFilmeCellID") as? DescricaoFilmeTableViewCell {
                cell.descricao.text = controller?.descricaoFilme
                cell.genero.text = controller?.generoFilme
                return cell
            }
            return UITableViewCell()
        default:
            return criarCelulaFilmeXib(controller?.filmesRelacionados[indexPath.row - 3], tableView)
//            return UITableViewCell()
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.row {
        case 0:
            return 200
        case 1:
            return 60
        case 2:
            return 150
        case 3:
//            let tamanhoTableView = self.view.frame.size.height
//            let tamanhoPadrao = super.tableView(tableView, heightForRowAt: indexPath)
//            return tamanhoTableView - (200 - 150 - tamanhoPadrao)
            return 60
        default:
            return 60
//            return super.tableView(tableView, heightForRowAt: indexPath)
        }
    }
}


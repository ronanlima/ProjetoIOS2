//
//  FilmesCartazController.swift
//  Projeto FIlmes
//
//  Created by Renê Xavier on 26/09/19.
//  Copyright © 2019 IESB. All rights reserved.
//

import Foundation

class FilmesCartazController {
    private var filmes = [Filme("Avengers", "Infinity war", "add-big"),
                          Filme("MIB", "Homens de preto", nil),
                          Filme("X-men", "Fenix negra", nil)]
    func filme(index: Int) -> Filme? {
        if (existeIndex(index)) {
            return filmes[index]
        }
        return nil
    }
    
    func existeIndex(_ index: Int) -> Bool {
        return index < filmes.count
    }
    
    var qtdFilmes: Int {
        return filmes.count
    }
    
    var qtdFilmesSugeridos: Int {
        return filmes.count + 1
    }
    
    func nome(paraFilmeEm index: Int) -> String? {
        return filmes[index].nome
    }
    
    func tagline(paraFilmeEm index: Int) -> String? {
        return filmes[index].tagline
    }
    
    func nomePoster(paraFilmeEm index: Int) -> String? {
        return filmes[index].poster
    }
}

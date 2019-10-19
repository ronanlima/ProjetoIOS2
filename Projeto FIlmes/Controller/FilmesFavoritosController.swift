//
//  FilmesFavoritosController.swift
//  Projeto FIlmes
//
//  Created by Ronan Lima on 19/10/19.
//  Copyright © 2019 IESB. All rights reserved.
//

import Foundation

class FilmesFavoritosController {
    private var filmes = [Filme("A Sociedade do Anel", "O Senhor dos Anéis", "senhor-dos-aneis-i"),
                          Filme("As Duas Torres", "O Senhor dos Anéis", "senhor-dos-aneis-i"),
                          Filme("O Retorno do Rei", "O Senhor dos Anéis", "senhor-dos-aneis-i"),
                          Filme("Matrix", "Matrix", "matrix"),
                          Filme("Matrix Reloaded", "Matrix", "matrix"),
                          Filme("Matrix Revolution", "Matrix", "matrix"),]
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

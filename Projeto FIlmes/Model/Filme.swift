//
//  Filme.swift
//  Projeto FIlmes
//
//  Created by Renê Xavier on 26/09/19.
//  Copyright © 2019 IESB. All rights reserved.
//

import Foundation

class Filme {
    var nome, tagline, poster, descricao, genero, nota, ano, duracao: String?
    
    init(_ nome: String?, _ tagline: String?, _ poster: String?) {
        self.nome = nome
        self.tagline = tagline
        self.poster = poster
    }
}

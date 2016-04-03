//
//  BancodeDados.swift
//  ProjetoCR
//
//  Created by Wellington Bezerra on 02/04/16.
//  Copyright © 2016 João Gabriel Jardim. All rights reserved.
//

import Foundation

public var listaAlunos = [Aluno]()
public var usuarioAtual: Aluno!

// usuarios pré-cadastrados
public func iniciar_usuarios () {
listaAlunos.append(Aluno(faculdade: "PUC-Rio", matricula: "1413383", senha: "123", nome: "Wellington", crGlobal: 7.0))
}


// encontra o usuario pela matricula
public func indicePessoaPorMatricula (matricula: String) -> Int {
    var indice = -1
    for (var i=0; i<listaAlunos.count; i += 1) {
        if listaAlunos[i].obtem_matricula() == matricula {
            indice = i
            break
        }
    }
    return indice
}


 
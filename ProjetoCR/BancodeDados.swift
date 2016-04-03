//
//  BancodeDados.swift
//  ProjetoCR
//
//  Created by Wellington Bezerra on 02/04/16.
//  Copyright © 2016 João Gabriel Jardim. All rights reserved.
//

import Foundation

public var listaAlunos = [Aluno]()
public var listaTodasDisciplinas = [Disciplina]()
public var historicoAlunos = [Cursar]()

public var usuarioAtual: Aluno!
public var historicousuarioAtual: [Cursar]!

var aluno1 = Aluno(faculdade: "PUC-Rio", matricula: "1413383", senha: "12345", nome: "Wellington", crGlobal: 7.0)
var aluno2 = Aluno(faculdade: "PUC-Rio", matricula: "1510542", senha: "12345", nome: "Gabrielle", crGlobal: 7.0)

var eng1000 = Disciplina(nome: "Introdução à Engenharia", qtdCreditos: 2, codigo: "ENG1000", criterio: 2)
var fis1033 = Disciplina(nome: "Mecânica Newtoniana", qtdCreditos: 4, codigo: "FIS1033", criterio: 2)
var fis1034 = Disciplina(nome: "Laboratório de Mecânica Newtoniana", qtdCreditos: 2, codigo: "FIS1034", criterio: 2)
var mat1161 = Disciplina(nome: "Cálculo de uma Variável", qtdCreditos: 6, codigo: "MAT1161", criterio: 2)
var mat1260 = Disciplina(nome: "Álgebra Linear 1", qtdCreditos: 4, codigo: "MAT1260", criterio: 2)
var qui1709 = Disciplina(nome: "Laboratório de Química Geral", qtdCreditos: 2, codigo: "QUI1709", criterio: 2)
var qui1720 = Disciplina(nome: "Química Geral", qtdCreditos: 4, codigo: "QUI1720", criterio: 2)


// usuarios pré-cadastrados
public func iniciar_usuarios () {
    
    listaAlunos.append(aluno1)
    listaAlunos.append(aluno2)
}

// disciplinas pré-cadastradas
public func iniciar_todasdisciplinas () {
    listaTodasDisciplinas.append(eng1000)
    listaTodasDisciplinas.append(fis1033)
    listaTodasDisciplinas.append(fis1034)
    listaTodasDisciplinas.append(mat1161)
    listaTodasDisciplinas.append(mat1260)
    listaTodasDisciplinas.append(qui1709)
    listaTodasDisciplinas.append(qui1720)
}

// pré-cadastro do aluno_disciplina_grau_semestre
public func iniciar_historicoalunos () {
    historicoAlunos.append(Cursar(aluno: aluno1, disciplina: eng1000, semestre: 141))
    historicoAlunos.append(Cursar(aluno: aluno1, disciplina: fis1033, semestre: 141))
    historicoAlunos.append(Cursar(aluno: aluno1, disciplina: fis1034, semestre: 141))
    historicoAlunos.append(Cursar(aluno: aluno2, disciplina: eng1000, semestre: 141))
    historicoAlunos.append(Cursar(aluno: aluno2, disciplina: fis1033, semestre: 141))
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


 
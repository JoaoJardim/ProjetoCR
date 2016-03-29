//: Playground - noun: a place where people can play

import UIKit


var alunoTeste:			Aluno
var materiasDoPeriodo: [Cursar]
var materiaTeste:		Disciplina

alunoTeste = Aluno(email: "emaildeteste@gmail.com", matricula: "12345678", senha: "senhaloka", nome: "alunoCampeao", periodo: 5, crGlobal: 7.5, crPeriodo: 7.9)

materiaTeste = Disciplina(nome: "mecsol", qtdCreditos: 6, codigo: "ENG1234", criterio: 5)

alunoTeste.addMateria(materiaTeste)

materiasDoPeriodo = alunoTeste.getMateriasPeriodo()


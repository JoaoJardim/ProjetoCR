//
//  AlunoClass.swift
//  ProjetoCR
//
//  Created by João Gabriel Jardim on 3/25/16.
//  Copyright © 2016 João Gabriel Jardim. All rights reserved.
//

import Foundation

class Aluno {
	private var email:				String
	private var matricula:			String
	private var senha:				String
	private var nome:				String
	private var periodo:			Int
	private var crGlobal:			Double
	private var crPeriodo:			Double
	private var materiasPeriodo:	[Cursar]
	
	init(email: String, matricula: String, senha: String, nome: String, periodo: Int, crGlobal: Double, crPeriodo: Double){
		self.email		= email
		self.matricula	= matricula
		self.senha		= senha
		self.nome		= nome
		self.periodo	= periodo
		self.crGlobal	= crGlobal
		self.crPeriodo	= crPeriodo
		materiasPeriodo = []
    }
	
	func addMateria(materia: Cursar){
		self.materiasPeriodo.append(materia)
	}
	
	func clearMaterias(){
		self.materiasPeriodo.removeAll()
	}
	
	func simulateCRPeriodo() -> Double{
		return 0
	}
	
	func getCrGlobal() -> Double{
		return 0
	}
	
}
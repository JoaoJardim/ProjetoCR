//
//  AlunoClass.swift
//  ProjetoCR
//
//  Created by João Gabriel Jardim on 3/25/16.
//  Copyright © 2016 João Gabriel Jardim. All rights reserved.
//

import Foundation

class Aluno {
	// MARK: Atributes
	private var faculdade:			String
	private var matricula:			String
	private var senha:				String
	private var nome:				String
	private var periodo:			Int
	private var crGlobal:			Double
	private var crPeriodo:			Double
	private var materiasPeriodo:	[Cursar]
	
	// MARK: Methods
	init(faculdade: String, matricula: String, senha: String, nome: String, periodo: Int, crGlobal: Double, crPeriodo: Double){
		self.faculdade	= faculdade
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
	
	func simulateCRPeriodo() -> Double{
		var qtdCreditosPeriodo: Int		= 0
		var totalCreditoGrau:	Double	= 0
		
		for materia in materiasPeriodo {
			qtdCreditosPeriodo	+= materia.creditosDisciplina()
			totalCreditoGrau	+= materia.grauFinal() * Double(materia.creditosDisciplina())
		}
		return totalCreditoGrau/Double(qtdCreditosPeriodo)
	}
	
	func getCrGlobal() -> Double{
		return crGlobal
	}
	
	func archivePeriodo(){
		// save them
		
		
		
		clearMaterias()
	}
	
	// MARK: Internal functions
	private func clearMaterias(){
		self.materiasPeriodo.removeAll()
	}
}
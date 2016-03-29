//
//  AlunoClass.swift
//  ProjetoCR
//
//  Created by João Gabriel Jardim on 3/25/16.
//  Copyright © 2016 João Gabriel Jardim. All rights reserved.
//

import Foundation

public class Aluno {
	private var faculdade:			String
	private var matricula:			String
	private var senha:				String
	private var nome:				String
	private var periodo:			Int
	private var crGlobal:			Double
	private var crPeriodo:			Double
	private var materiasPeriodo:	[Cursar]
	
	public init(faculdade: String, matricula: String, senha: String, nome: String, periodo: Int, crGlobal: Double, crPeriodo: Double){
		self.email		= email
		self.matricula	= matricula
		self.senha		= senha
		self.nome		= nome
		self.periodo	= periodo
		self.crGlobal	= crGlobal
		self.crPeriodo	= crPeriodo
		materiasPeriodo = []
    }
	
	public func addMateria(materia: Disciplina, semestre: Int){
		let novaDisciplina = Cursar(aluno: self, disciplina: materia, semestre: semestre)
		self.materiasPeriodo.append(novaDisciplina)
	}
	
	public func getMateriasPeriodo()->[Disciplina]{
		var materias: [Disciplina]
		
		for item in materiasPeriodo {
			materias.append(item.getDiciplina())
		}
		
		return materias
	}
	
	public func clearMaterias(){
		self.materiasPeriodo.removeAll()
	}
	
	public func simulateCRPeriodo() -> Double{
		return 0
	}
	
	public func getCrGlobal() -> Double{
		return 0
	}
	
}
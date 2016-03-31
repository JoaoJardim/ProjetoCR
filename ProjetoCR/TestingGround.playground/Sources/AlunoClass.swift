//
//  AlunoClass.swift
//  ProjetoCR
//
//  Created by João Gabriel Jardim on 3/25/16.
//  Copyright © 2016 João Gabriel Jardim. All rights reserved.
//

import Foundation

public class Aluno {
	// MARK: Atributes
	private var faculdade:				String
	private var matricula:				String
	private var senha:					String
	private var nome:					String
	private var semestreDeEntrada:		Int
	private var crGlobal:				Double
	private var disciplinasCursadas:	[Cursar]
	
	// MARK: Methods
	public init(faculdade: String, matricula: String, senha: String, nome: String, crGlobal: Double){
		self.faculdade			= faculdade
		self.matricula			= matricula
		self.senha				= senha
		self.nome				= nome
		self.semestreDeEntrada	= Int(matricula.substringToIndex(matricula.endIndex.advancedBy(-4)))!
		self.crGlobal			= crGlobal
		disciplinasCursadas		= []
    }
	
	public func addDisciplina(disciplina: Cursar){
		self.disciplinasCursadas.append(disciplina)
	}
	
	public func removeDisciplina(disciplina: Cursar){
		for i in 0...disciplinasCursadas.count-1 {
			if disciplinasCursadas[i].getDisciplina().getNome() == disciplina.getDisciplina().getNome() {
				disciplinasCursadas.removeAtIndex(i)
			}
		}
	}
	
	public func getDisciplinasSemestre(semestre: Int) -> [Cursar]{
		var disciplinasSemestre: [Cursar] = []
		
		for disciplina in disciplinasCursadas {
			if disciplina.getSemestre() == semestre {
				disciplinasSemestre.append(disciplina)
			}
		}
		
		return disciplinasSemestre
	}
	
	public func calculateCRofSemestre(semestre: Int) -> Double{
		
		var qtdCreditosPeriodo: Int		= 0
		var totalCreditoGrau:	Double	= 0
		
		for disciplina in disciplinasCursadas {
			if disciplina.getSemestre() == semestre {
				qtdCreditosPeriodo	+= disciplina.creditosDisciplina()
				totalCreditoGrau	+= disciplina.grauFinal() * Double(disciplina.creditosDisciplina())
			}
		}
		
		return totalCreditoGrau/Double(qtdCreditosPeriodo)
	}
	
	public func getCrGlobal() -> Double{
		return crGlobal
	}
	
	public func simulateNextCRGlobal(semestreSendoCursado: Int) -> Double{
		var qtdCreditosCursados:	Int = 0
		var qtqCreditosCursando:	Int = 0
		var newCR:					Double
		
		for disciplina in disciplinasCursadas {
			if disciplina.getSemestre() == semestreSendoCursado {
				qtqCreditosCursando += disciplina.creditosDisciplina()
			}
			else if disciplina.getSemestre() < semestreSendoCursado {
				qtdCreditosCursados += disciplina.creditosDisciplina()
			}
		}
		
		newCR = (Double(qtdCreditosCursados) * getCrGlobal() + Double(qtqCreditosCursando) * calculateCRofSemestre(semestreSendoCursado)) / Double(qtdCreditosCursados + qtqCreditosCursando)
		
		return newCR
	}
	
	func archivePeriodo(){
		// save them
		
		
		
		clearDisciplinas()
	}
	
	// MARK: Internal functions
	private func clearDisciplinas(){
		self.disciplinasCursadas.removeAll()
	}
}
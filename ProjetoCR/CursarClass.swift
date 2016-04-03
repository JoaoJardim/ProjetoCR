//
//  CursarClass.swift
//  ProjetoCR
//
//  Created by João Gabriel Jardim on 3/26/16.
//  Copyright © 2016 João Gabriel Jardim. All rights reserved.
//

import Foundation

public class Cursar {
	// MARK: Atributes
	public var aluno:		Aluno
	public var disciplina:	Disciplina
	public var semestre:	Int
	public var graus		= [Double]()
	
	// MARK: Methods
	init(aluno: Aluno, disciplina: Disciplina, semestre: Int){
		self.aluno		= aluno
		self.disciplina = disciplina
		self.semestre	= semestre
		self.graus		= []
	}
	
	func setGrau(nota: Double){
		graus.append(nota)
	}
	
	func getDisciplina()->Disciplina{
		return disciplina
	}
	
	func grauFinal()->Double{
		return disciplina.calculateGrauFinal(graus)
	}
	
	func creditosDisciplina()->Int{
		return disciplina.getQtdCreditos()
	}
	
	func getSemestre()->Int{
		return semestre
	}
}

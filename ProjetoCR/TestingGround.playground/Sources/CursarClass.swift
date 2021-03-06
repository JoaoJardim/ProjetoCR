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
	private var aluno:		Aluno
	private var disciplina:	Disciplina
	private var semestre:	Int
	private var graus		= [Double]()
	
	// MARK: Methods
	public init(aluno: Aluno, disciplina: Disciplina, semestre: Int){
		self.aluno		= aluno
		self.disciplina = disciplina
		self.semestre	= semestre
		self.graus		= []
	}
	
	public func setGrau(nota: Double){
		graus.append(nota)
	}
	
	public func getDisciplina()->Disciplina{
		return disciplina
	}
	
	func grauFinal()->Double{
		return disciplina.calculateGrauFinal(graus)
	}
	
	func creditosDisciplina()->Int{
		return disciplina.getQtdCreditos()
	}
	
	public func getSemestre()->Int{
		return semestre
	}
}

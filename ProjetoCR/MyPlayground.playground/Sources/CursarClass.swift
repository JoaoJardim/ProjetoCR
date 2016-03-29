//
//  CursarClass.swift
//  ProjetoCR
//
//  Created by João Gabriel Jardim on 3/26/16.
//  Copyright © 2016 João Gabriel Jardim. All rights reserved.
//

import Foundation

public class Cursar {
	private var aluno:		Aluno
	private var disciplina:	Disciplina
	private var semestre:	Int
	private var graus		= [Double]()
	
	public init(aluno: Aluno, disciplina: Disciplina, semestre: Int){
		self.aluno		= aluno
		self.disciplina = disciplina
		self.semestre	= semestre
		self.graus		= [0,0,0,0]
	}
	
	public func getDiciplina()->Disciplina{
		return self.disciplina
	}
	
	public func setGrau(number: Int, nota: Double){
		self.graus[number] = nota
	}
}

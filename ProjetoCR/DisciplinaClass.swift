//
//  DisciplinaClass.swift
//  ProjetoCR
//
//  Created by João Gabriel Jardim on 3/26/16.
//  Copyright © 2016 João Gabriel Jardim. All rights reserved.
//

import Foundation

class Disciplina {
	private var nome: String
	private var qtdCreditos: Int
	private var codigo: String
	private var criterio: Int
	
	init(nome: String, qtdCreditos: Int, codigo: String, criterio: Int){
		self.nome			= nome
		self.qtdCreditos	= qtdCreditos
		self.codigo			= codigo
		self.criterio		= criterio
	}
}
//
//  DisciplinaClass.swift
//  ProjetoCR
//
//  Created by João Gabriel Jardim on 3/26/16.
//  Copyright © 2016 João Gabriel Jardim. All rights reserved.
//

import Foundation

public class Disciplina {
	// MARK: Atributes
	private var nome:			String
	private var qtdCreditos:	Int
	private var codigo:			String
	private var criterio:		Criterio
	
	// MARK: Methods
	public init(nome: String, qtdCreditos: Int, codigo: String, criterio: Int){
		self.nome			= nome
		self.qtdCreditos	= qtdCreditos
		self.codigo			= codigo
		self.criterio		= Criterio(numero: criterio)
	}
	
	public func getNome() -> String{
		return nome
	}
	
	func calculateGrauFinal(graus: [Double]) -> Double{
		return criterio.calculateGrau(graus)
	}
	
	func getQtdCreditos() -> Int{
		return qtdCreditos
	}
}
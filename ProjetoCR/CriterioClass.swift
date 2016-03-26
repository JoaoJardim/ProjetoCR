//
//  CriterioClass.swift
//  ProjetoCR
//
//  Created by João Gabriel Jardim on 3/26/16.
//  Copyright © 2016 João Gabriel Jardim. All rights reserved.
//

import Foundation

class Criterio {
	private var numero:		Int
	private var qtdGraus:	Int
	
	init(numero: Int, qtdGraus: Int){
		self.numero		= numero
		self.qtdGraus	= qtdGraus
	}
	
	func calculateGrade() -> Double{
		return 0
	}
}
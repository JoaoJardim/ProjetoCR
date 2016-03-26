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
	
	func calculateGrau() -> Double{
		return 0
	}
	
	private var criterioCalculo: [Int: Criterio->([Double])->(Double)] = [
		1:	crit1,
		2:	crit2,
		3:	crit3,
		4:	crit4,
		5:	crit5,
		6:	crit6,
		7:	crit7,
		8:	crit8,
		9:	crit9,
		10:	crit10
	]
	
	private func crit1(graus:[Double])->Double{
		return 0
	}
	private func crit2(graus:[Double])->Double{
		return 0
	}
	private func crit3(graus:[Double])->Double{
		return 0
	}
	private func crit4(graus:[Double])->Double{
		return 0
	}
	private func crit5(graus:[Double])->Double{
		return 0
	}
	private func crit6(graus:[Double])->Double{
		return 0
	}
	private func crit7(graus:[Double])->Double{
		return 0
	}
	private func crit8(graus:[Double])->Double{
		return 0
	}
	private func crit9(graus:[Double])->Double{
		return 0
	}
	private func crit10(graus:[Double])->Double{
		return 0
	}
}
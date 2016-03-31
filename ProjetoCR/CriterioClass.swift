//
//  CriterioClass.swift
//  ProjetoCR
//
//  Created by João Gabriel Jardim on 3/26/16.
//  Copyright © 2016 João Gabriel Jardim. All rights reserved.
//

import Foundation

class Criterio {
	// MARK: Atributes
	private var numero:		Int
	private var qtdGraus:	Int
	
	private var criterioCalculo: [Int: ([Double])->(Double)] = [
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
	
	// MARK: Methods
	init(numero: Int){
		self.numero			= numero
		switch numero {
		case 1:
			self.qtdGraus	= 2
		case 2:
			self.qtdGraus	= 2
		case 3:
			self.qtdGraus	= 2
		case 4:
			self.qtdGraus	= 4
		case 5:
			self.qtdGraus	= 4
		case 6:
			self.qtdGraus	= 3
		case 7:
			self.qtdGraus	= 3
		case 8:
			self.qtdGraus	= 3
		case 9:
			self.qtdGraus	= 4
		case 10:
			self.qtdGraus	= 6
		default:
			self.qtdGraus	= 0
		}
	}
	
	func calculateGrau(graus: [Double]) -> Double{
		return criterioCalculo[self.numero]!(graus)
	}
}

private func crit1(graus:[Double])->Double {
	if (graus[1] < 3) {
		return (graus[0] + graus[1] * 2) / 3
	}
	return (graus[0] * 2 + graus[1] * 3) / 5
}
private func crit2(graus:[Double])->Double {
	return (graus[0] + graus[1] * 2) / 3
}
private func crit3(graus:[Double])->Double {
	if (graus[1] < 3) {
		return (graus[0] + graus[1] * 3) / 4
	}
	return (graus[0] + graus[1]) / 2
}
private func crit4(graus:[Double])->Double {
	if (graus[0] >= 3 && graus[1] >= 3 && graus[2] >= 3 && (graus[0] + graus[1] + graus[2]) / 3 >= 5) {
		return (graus[0] + graus[1] + graus[2]) / 3
	}
	if (graus[3] > 3) {
		return (graus[0] + graus[1] + graus[2] + graus[3] - graus.minElement()!) / 3
	}
	return (graus[0] + graus[1] + graus[2] + graus[3] * 3) / 6
} // critério chato! - revisar
private func crit5(graus:[Double])->Double {
	if (graus[0] >= 5 && graus[1] >= 5 && graus[2]>=5 || (graus[0] + graus[1] + graus[2]) / 3 >= 6) {
		return (graus[0]+graus[1]+graus[2])/3
	}
	if graus[3] > 3 {
		return (graus[0]+graus[1]+graus[2]+graus[3]-graus.minElement()!)/3
	}
	return (graus[0]+graus[1]+graus[2]+graus[3]*3)/6
} // critério chato! - revisar
private func crit6(graus:[Double])->Double {
	if (graus[0] >= 3 && graus[1] >= 3 && (graus[0] + graus[1]) / 2 >= 5) {
		return (graus[0]+graus[1])/2
	}
	if (graus[3] <= 3) {
		return (graus[0] + graus[1] + graus[3] * 2) / 4
	}
	return (graus[0] + graus[1] + graus[2] - graus.minElement()!) / 2
} // critério chato! - revisar
private func crit7(graus:[Double])->Double {
	if (graus[0] >= 3 && graus[1] >= 3 && (graus[0] + graus[1]) / 2 >= 6) {
		return (graus[0] + graus[1]) / 2
	}
	return (graus[0] + graus[1] + graus[2] * 2) / 4
}
private func crit8(graus:[Double])->Double {
	let N1 = (graus[0] * 2 + graus[1] * 3) / 5
	
	if (graus[0] > 3 && graus[1] > 3 && N1 > 6) {
		return N1
	}
	if ((graus[0] < 3 || graus[1] < 3) && graus[2] < 3) {
		return (graus[0] + graus[1] + graus[2] * 2) / 4
	}
	return (N1 + graus[2]) / 2
}
private func crit9(graus:[Double])->Double {
	return (graus[0] + graus[1] + graus[2] + graus[3]) / 4
}
private func crit10(graus:[Double])->Double {
	var NL:			Double
	var NT:			Double
	var grausNL:	[Double] = []
	var grausNT:	[Double] = []
	
	for i in 0...graus.count {
		if i<2 {
			grausNL.append(graus[i])
		}
		else{
			grausNT.append(graus[i])
		}
	}
	
	NL = crit3(grausNL)
	NT = crit4(grausNT)
	
	if NL > 5 && NT > 5 {
		return (NT * 3 + NL) / 4
	}
	return min(NL, NT)
}
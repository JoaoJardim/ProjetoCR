//
//  CursarClass.swift
//  ProjetoCR
//
//  Created by João Gabriel Jardim on 3/26/16.
//  Copyright © 2016 João Gabriel Jardim. All rights reserved.
//

import Foundation

class Cursar {
	private var semestre: Int
	private var graus = [Double]()
	
	init(semestre: Int){
		self.semestre = semestre
		self.graus = [0,0,0,0]
	}
}

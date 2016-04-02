//
//  NovaDisciplinaView.swift
//  ProjetoCR
//
//  Created by Gabrielle Brandenburg dos Anjos on 3/30/16.
//  Copyright © 2016 João Gabriel Jardim. All rights reserved.
//

import UIKit

class NovaDisciplinaView: UIView {

    init(frame: CGRect, CRType: String, CR: Double, simuText: String, decimals: Double) {
        super.init(frame: frame)
        self.drawRect(self.frame)
        self.addCustomView()
        
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addCustomView() {
        
    }
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}

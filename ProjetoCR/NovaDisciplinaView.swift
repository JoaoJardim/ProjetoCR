//
//  NovaDisciplinaView.swift
//  ProjetoCR
//
//  Created by Gabrielle Brandenburg dos Anjos on 3/30/16.
//  Copyright © 2016 João Gabriel Jardim. All rights reserved.
//

import UIKit

class NovaDisciplinaView: UIView {

    let background = GradientView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.drawRect(self.frame)
        self.addCustomView()
        
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addCustomView() {
        background.frame = CGRectMake(0, 0, frame.width, frame.height)
        background.colors = [UIColor.azul(), UIColor.laranja()]
        self.addSubview(background)
    }
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}

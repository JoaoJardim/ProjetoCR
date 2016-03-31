//
//  CadastroView.swift
//  ProjetoCR
//
//  Created by Gabrielle Brandenburg dos Anjos on 3/30/16.
//  Copyright © 2016 João Gabriel Jardim. All rights reserved.
//

import UIKit

class CadastroView: UIView {

    let attributes = [
        NSForegroundColorAttributeName: UIColor.whiteColor(),
        NSFontAttributeName : UIFont(name: "Lane - Narrow", size: 24)! // Note the !
    ]
    
    var emailTextField: UITextField = UITextField()
    var matriculaTextField: UITextField = UITextField()
    
    
    
    let background: GradientView = GradientView()
    
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        self.addCustomView()
//    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}

//
//  MeuPeriodoView.swift
//  ProjetoCR
//
//  Created by Gabrielle Brandenburg dos Anjos on 3/30/16.
//  Copyright © 2016 João Gabriel Jardim. All rights reserved.
//

import UIKit

//class customButton: UIButton {
//   
//    var image = UIImageView()
//    var titLabel = UILabel()
//    
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        loadStuff()
//    }
//    
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//    
//    func loadStuff () {
//        
//        titLabel.text = "Adicionar Disciplina"
//        titLabel.frame = CGRectMake(0,0.685*self.frame.height,self.frame.width,0.315*self.frame.height)
//        titLabel.textColor = UIColor.whiteColor()
//        self.addSubview(titLabel)
//        image.image = UIImage(named: "plus")
//        image.frame = CGRectMake(0.362*self.frame.width,0*self.frame.height,0.276*self.frame.width,0.648*self.frame.height)
//        self.addSubview(image)
//    }
//
//}

class MeuPeriodoView: UIView {

    let background: GradientView = GradientView()
    let addSubjectButton = UIButton()
    let titLabel = UILabel()
    let plusShape = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addCustomView()
        
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addCustomView() {
        var w = frame.width
        var h = frame.height
        let font14 = CGFloat((14/667)*h)
        
        background.frame = CGRectMake(0, 0, frame.width, frame.height)
        background.colors = [UIColor.azul(), UIColor.laranja()]
        self.addSubview(background)
        
        addSubjectButton.frame =  CGRectMake(0.331*w,0.825*h,0.339*w,0.081*h)
        addSubjectButton.backgroundColor = UIColor.clearColor()
        self.addSubview(addSubjectButton)
        
        w = addSubjectButton.frame.width
        h = addSubjectButton.frame.height
        
        titLabel.text = "Adicionar Disciplina"
        titLabel.frame = CGRectMake(0*w,0.685*h,1*w,0.315*h)
        titLabel.font.fontWithSize(font14)
        titLabel.textColor = UIColor.whiteColor()
        titLabel.textAlignment = .Center
        addSubjectButton.addSubview(titLabel)
        
        plusShape.image = UIImage(named: "plus")
        plusShape.frame = CGRectMake(0.362*w,0*h,0.276*w,0.648*h)
        addSubjectButton.addSubview(plusShape)
        
    }
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}

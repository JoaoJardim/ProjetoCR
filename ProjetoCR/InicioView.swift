//
//  InicioView.swift
//  ProjetoCR
//
//  Created by Gabrielle Brandenburg dos Anjos on 3/30/16.
//  Copyright © 2016 João Gabriel Jardim. All rights reserved.
//

import UIKit

class LeftButtonView: UIButton {
    
    
}

class InicioView: UIView {

    
    let background: GradientView = GradientView()
    var title = UILabel()
    var CRLabel = UILabel()
    var crView = UIView()
    var simuLabel = UILabel()
    var decimalLabel = UILabel()
    var rightButton = UIButton()
    var leftButton = UIButton()
    
    init(frame: CGRect, CRType: String, CR: Double, simuText: String, decimals: Double) {
        super.init(frame: frame)
        self.drawRect(self.frame)
        self.addCustomView(CRType, CR: CR, simuText: simuText, decimals: decimals)
        
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func addCustomView (CRType: String, CR: Double, simuText: String, decimals: Double) {
        let font72 = 72/667*frame.height
        Global.getSharedInstance().fontSize72 = font72
        
        var h = self.frame.height
        var w = self.frame.width
        
        background.frame = CGRectMake(0, 0, w, h)
        background.colors = [UIColor.azul(), UIColor.laranja()]
        self.addSubview(background)
        
        title.frame = CGRectMake(0*w,0.082*h,1*w,0.064*h)
        title.text = CRType
        title.textColor = UIColor.whiteColor()
        title.font = UIFont(name: "Lane - Narrow", size: 36)
        title.textAlignment = .Center
        self.addSubview(title)
        
        crView.frame = CGRectMake(0.235*w,0.303*h,0.533*w,0.3*h)
        crView.backgroundColor = UIColor.clearColor()
        self.addSubview(crView)

        CRLabel.frame = CGRectMake(0.376*w,0.388*h,0.251*w,0.129*h)
        CRLabel.text = "\(CR)"
        CRLabel.textColor = UIColor.laranja()
        CRLabel.font = UIFont(name: "Lane - Narrow", size: font72)
        CRLabel.textAlignment = .Center
        self.addSubview(CRLabel)
        
        decimalLabel.frame = CGRectMake(0,0.52*h,w,0.042*h)
        if decimals != 0 {
            if decimals > 0 {
                decimalLabel.textColor = UIColor.verde()
                decimalLabel.text = "+ \(decimals)"
            }
            else {
                decimalLabel.textColor = UIColor.redColor()
                decimalLabel.text = "- \(decimals)"
                
            }
            decimalLabel.textAlignment = .Center
            decimalLabel.font.fontWithSize((28/667)*h)
        }
        self.addSubview(decimalLabel)
    
        simuLabel.frame = CGRectMake(0*w,0.642*h,1*w,0.05*h)
        simuLabel.text = simuText
        simuLabel.textColor = UIColor.whiteColor()
        simuLabel.textAlignment = .Center
        simuLabel.font.fontWithSize((20/667)*h)
        self.addSubview(simuLabel)
        

    }
    
//    
//     Only override drawRect: if you perform custom drawing.
//     An empty implementation adversely affects performance during animation.

    override func drawRect(rect: CGRect) {
        
        let h = crView.frame.width
        let w = crView.frame.height
        
    
        let circlePath = UIBezierPath(arcCenter: CGPoint(x: w/2,y: w/2), radius: CGFloat(w/2), startAngle: CGFloat(0), endAngle:CGFloat(M_PI * 2), clockwise: true)
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = circlePath.CGPath
        
        //change the fill color
        shapeLayer.fillColor = UIColor.whiteColor().CGColor
        //you can change the stroke color
        shapeLayer.strokeColor = UIColor.clearColor().CGColor
        //you can change the line width
        //shapeLayer.lineWidth = 3.0
        crView.layer.addSublayer(shapeLayer)
        
    }



}


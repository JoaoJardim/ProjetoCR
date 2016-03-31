//
//  CadastroView.swift
//  ProjetoCR
//
//  Created by Gabrielle Brandenburg dos Anjos on 3/30/16.
//  Copyright © 2016 João Gabriel Jardim. All rights reserved.
//

import UIKit

class CadastroView: UIView {

    var scrollViewCadastro: UIScrollView!
    
    var emailTextField = UITextField()
    var matriculaTextField = UITextField()
    var cursoTextField = UITextField()
    var passwordTextField = UITextField()
    var confirmPasswordTextField = UITextField()
    
    var emailLabel = UILabel()
    var matriculaLabel = UILabel()
    var cursoLabel = UILabel()
    var passwordLabel = UILabel()
    var confirmPasswordLabel = UILabel()

    
    let attributes = [
        NSForegroundColorAttributeName: UIColor.whiteColor(),
        NSFontAttributeName : UIFont(name: "Lane - Narrow", size: 24)! // Note the !
    ]
    
    let background: GradientView = GradientView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addCustomView()
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addCustomView() {
        var w = self.frame.width
        var h = self.frame.height
        
        background.frame = CGRectMake(0, 0, w, h)
        background.colors = [UIColor.azul(), UIColor.laranja()]
        self.addSubview(background)
        
        
        scrollViewCadastro = UIScrollView(frame: CGRectMake(0.067*w,0.187*h,0.867*w,0.592*h))
        scrollViewCadastro.backgroundColor = UIColor.clearColor()
        self.addSubview(scrollViewCadastro)
        w = scrollViewCadastro.frame.width
        h = scrollViewCadastro.frame.height
        
        emailTextField.frame = CGRectMake(0*w,0.064*h,1*w,0.148*h)
        emailTextField.textColor = UIColor.whiteColor()
        emailTextField.borderStyle = UITextBorderStyle.None
        emailTextField.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.3)
        emailTextField.textAlignment = .Center
        scrollViewCadastro.addSubview(emailTextField)

        
        matriculaTextField.frame = CGRectMake(0*w,0.326*h,1*w,0.148*h)
        matriculaTextField.textColor = UIColor.whiteColor()
        matriculaTextField.borderStyle = UITextBorderStyle.None
        matriculaTextField.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.3)
        matriculaTextField.textAlignment = .Center
        scrollViewCadastro.addSubview(matriculaTextField)
        
        cursoTextField.frame = CGRectMake(0*w,0.588*h,1*w,0.148*h)
        cursoTextField.textColor = UIColor.whiteColor()
        cursoTextField.borderStyle = UITextBorderStyle.None
        cursoTextField.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.3)
        cursoTextField.textAlignment = .Center
        scrollViewCadastro.addSubview(cursoTextField)
        
        passwordTextField.frame = CGRectMake(0*w,0.85*h,1*w,0.148*h)
        passwordTextField.textColor = UIColor.whiteColor()
        passwordTextField.borderStyle = UITextBorderStyle.None
        passwordTextField.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.3)
        passwordTextField.textAlignment = .Center
        scrollViewCadastro.addSubview(passwordTextField)
        
        confirmPasswordTextField.frame = CGRectMake(0*w,1.112*h,1*w,0.148*h)
        confirmPasswordTextField.textColor = UIColor.whiteColor()
        confirmPasswordTextField.borderStyle = UITextBorderStyle.None
        confirmPasswordTextField.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.3)
        confirmPasswordTextField.textAlignment = .Center
        scrollViewCadastro.addSubview(confirmPasswordTextField)
        
        scrollViewCadastro.contentSize = CGSize(width: w, height: confirmPasswordTextField.frame.maxY)
    
    }
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}

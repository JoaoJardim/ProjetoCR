//
//  CadastroView.swift
//  ProjetoCR
//
//  Created by Gabrielle Brandenburg dos Anjos on 3/30/16.
//  Copyright © 2016 João Gabriel Jardim. All rights reserved.
//

import UIKit

class CadastroView: UIView {


    var scrollViewCadastro: MyScrollView!
    
    var title = UILabel()
    
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
    
    var okButton = UIButton()
    var cancelButton = UIButton()
    
    let background: GradientView = GradientView()
    
    override init(frame: CGRect ) {
        super.init(frame: frame)
        self.addCustomView()
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addCustomView() {
        let font18 = 18/667*frame.height
        let font36 = (36/667)*frame.height
        let font24 = 24/667*frame.height
        Global.getSharedInstance().fontSize18 = font18
        
        let attributes = [
            NSForegroundColorAttributeName: UIColor.whiteColor(),
            NSFontAttributeName : UIFont(name: "Lane - Narrow", size: font24)! // Note the !
        ]
        
        var w = self.frame.width
        var h = self.frame.height
        
        background.frame = CGRectMake(0, 0, w, h)
        background.colors = [UIColor.azul(), UIColor.laranja()]
        self.addSubview(background)
        
        title.frame = CGRectMake(0*w,0.082*h,1*w,0.064*h)
        title.text = "Cadastro"
        title.textColor = UIColor.whiteColor()
        title.font = UIFont(name: "Lane - Narrow", size: font36)
        title.textAlignment = .Center
        self.addSubview(title)
        
        okButton.frame = CGRectMake(0.069*w,0.862*h,0.392*w,0.09*h)
        okButton.backgroundColor = UIColor.whiteColor()
        okButton.setTitle("Ok", forState: UIControlState.Normal)
        okButton.titleLabel!.font = UIFont(name: "Lane - Narrow", size: font24)
        okButton.setTitleColor(UIColor.laranja(), forState: UIControlState.Normal)
        self.addSubview(okButton)
        
        cancelButton.frame = CGRectMake(0.544*w,0.862*h,0.392*w,0.09*h)
        cancelButton.backgroundColor = UIColor.whiteColor()
        cancelButton.setTitle("Cancelar", forState: UIControlState.Normal)
        cancelButton.titleLabel!.font = UIFont(name: "Lane - Narrow", size: font24)
        cancelButton.setTitleColor(UIColor.laranja(), forState: UIControlState.Normal)
        self.addSubview(cancelButton)
        
        scrollViewCadastro = MyScrollView(frame: CGRectMake(0.067*w,0.187*h,0.867*w,0.592*h))
        scrollViewCadastro.backgroundColor = UIColor.clearColor()
        self.addSubview(scrollViewCadastro)
        w = scrollViewCadastro.frame.width
        h = scrollViewCadastro.frame.height
        
        emailTextField.frame = CGRectMake(0*w,0.064*h,1*w,0.148*h)
        emailTextField.textColor = UIColor.whiteColor()
        //emailTextField.text = email
        emailTextField.borderStyle = UITextBorderStyle.None
        emailTextField.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.3)
        emailTextField.textAlignment = .Center
        emailTextField.autocorrectionType = .No
        scrollViewCadastro.addSubview(emailTextField)
        
        emailLabel.frame = CGRectMake(0*w,0*h,1*w,0.052*h)
        emailLabel.textColor = UIColor.whiteColor()
        emailLabel.text = "E-mail"
        emailLabel.font = emailLabel.font.fontWithSize(font18)
        scrollViewCadastro.addSubview(emailLabel)

        matriculaTextField.frame = CGRectMake(0*w,0.326*h,1*w,0.148*h)
        matriculaTextField.textColor = UIColor.whiteColor()
        //matriculaTextField.text = matricula
        matriculaTextField.borderStyle = UITextBorderStyle.None
        matriculaTextField.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.3)
        matriculaTextField.textAlignment = .Center
        scrollViewCadastro.addSubview(matriculaTextField)
        
        matriculaLabel.frame = CGRectMake(0*w,0.262*h,w,0.052*h)
        matriculaLabel.textColor = UIColor.whiteColor()
        matriculaLabel.text = "Matrícula"
        matriculaLabel.font = matriculaLabel.font.fontWithSize(font18)
        scrollViewCadastro.addSubview(matriculaLabel)
        
        cursoTextField.frame = CGRectMake(0*w,0.588*h,1*w,0.148*h)
        cursoTextField.textColor = UIColor.whiteColor()
        //cursoTextField.text = curso
        cursoTextField.borderStyle = UITextBorderStyle.None
        cursoTextField.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.3)
        cursoTextField.textAlignment = .Center
        scrollViewCadastro.addSubview(cursoTextField)
        
        cursoLabel.frame = CGRectMake(0*w,0.524*h,w,0.053*h)
        cursoLabel.textColor = UIColor.whiteColor()
        cursoLabel.text = "Curso"
        cursoLabel.font = cursoLabel.font.fontWithSize(font18)
        scrollViewCadastro.addSubview(cursoLabel)

        passwordTextField.frame = CGRectMake(0*w,0.85*h,1*w,0.148*h)
        passwordTextField.textColor = UIColor.whiteColor()
        //passwordTextField.text = senha
        passwordTextField.borderStyle = UITextBorderStyle.None
        passwordTextField.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.3)
        passwordTextField.textAlignment = .Center
        scrollViewCadastro.addSubview(passwordTextField)
        
        passwordLabel.frame = CGRectMake(0*w,0.783*h,w,0.053*h)
        passwordLabel.textColor = UIColor.whiteColor()
        passwordLabel.text = "Senha"
        passwordLabel.font = passwordLabel.font.fontWithSize(font18)
        scrollViewCadastro.addSubview(passwordLabel)

        confirmPasswordTextField.frame = CGRectMake(0*w,1.112*h,1*w,0.148*h)
        confirmPasswordTextField.textColor = UIColor.whiteColor()
        //confirmPasswordTextField.text = confsenha
        confirmPasswordTextField.borderStyle = UITextBorderStyle.None
        confirmPasswordTextField.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.3)
        confirmPasswordTextField.textAlignment = .Center
        
        scrollViewCadastro.addSubview(confirmPasswordTextField)
        
        confirmPasswordLabel.frame = CGRectMake(0*w,1.042*h,w,0.053*h)
        confirmPasswordLabel.textColor = UIColor.whiteColor()
        confirmPasswordLabel.text = "Confirmar Senha"
        confirmPasswordLabel.font = confirmPasswordLabel.font.fontWithSize(font18)
        scrollViewCadastro.addSubview(confirmPasswordLabel)
        
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

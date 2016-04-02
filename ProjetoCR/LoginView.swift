//
//  LoginView.swift
//  ProjetoCR
//
//  Created by Gabrielle Brandenburg dos Anjos on 3/30/16.
//  Copyright © 2016 João Gabriel Jardim. All rights reserved.
//

import UIKit

class LoginView: UIView {


    
    var usernameTextfield: UITextField = UITextField()
    var passwordTextfield: UITextField = UITextField()
    var enterButton: UIButton = UIButton()
    var signUpButton: UIButton = UIButton()
    let background: GradientView = GradientView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addCustomView()
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func addCustomView() {
        let font24 = (24/667)*frame.height
        let attributes = [
            NSForegroundColorAttributeName: UIColor.whiteColor(),
            NSFontAttributeName : UIFont(name: "Lane - Narrow", size: font24)! // Note the !
        ]
        background.frame = CGRectMake(0, 0, frame.width, frame.height)
        background.colors = [UIColor.azul(), UIColor.laranja()]
        self.addSubview(background)
        
        usernameTextfield.frame = CGRectMake(self.frame.width*0.0666667, self.frame.height*0.410795, self.frame.width*0.866667, self.frame.height*0.09)  // como que faz pra usar view.height/width???????
        usernameTextfield.textColor = UIColor.whiteColor()
        usernameTextfield.attributedPlaceholder = NSAttributedString(string: "e-mail", attributes: attributes)
        usernameTextfield.borderStyle = UITextBorderStyle.None
        usernameTextfield.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.3)
        usernameTextfield.textAlignment = .Center
        self.addSubview(usernameTextfield)
        
        passwordTextfield.frame = CGRectMake(self.frame.width*0.067, self.frame.height*0.508, self.frame.width*0.867, self.frame.height*0.09)
        usernameTextfield.textColor = UIColor.whiteColor()
        passwordTextfield.attributedPlaceholder = NSAttributedString(string: "senha", attributes: attributes)
        passwordTextfield.borderStyle = UITextBorderStyle.None
        passwordTextfield.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.3)
        passwordTextfield.textAlignment = .Center
        self.addSubview(passwordTextfield)

        enterButton.frame = CGRectMake(self.frame.width*0.067, self.frame.height*0.606, self.frame.width*0.867, self.frame.height*0.09)
        enterButton.backgroundColor = UIColor.whiteColor()
        enterButton.setTitle("entrar", forState: UIControlState.Normal)
        enterButton.titleLabel!.font = UIFont(name: "Lane - Narrow", size: font24)
        enterButton.setTitleColor(UIColor.laranja(), forState: UIControlState.Normal)
        self.addSubview(enterButton)
        
        signUpButton.frame = CGRectMake(0.584*self.frame.width,0.712*self.frame.height,0.349*self.frame.width,0.043*self.frame.height)
        signUpButton.backgroundColor = UIColor.clearColor()
        signUpButton.setTitle("Cadastre-se", forState: UIControlState.Normal)
        signUpButton.titleLabel!.font = UIFont(name: "Lane - Narrow", size: font24)
        signUpButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        self.addSubview(signUpButton)

    }
    
//    let sampleTextField = UITextField(frame: CGRectMake(20, 100, 300, 40))
//    sampleTextField.placeholder = "Enter text here"
//    sampleTextField.font = UIFont.systemFontOfSize(15)
//    sampleTextField.borderStyle = UITextBorderStyle.RoundedRect
//    sampleTextField.autocorrectionType = UITextAutocorrectionType.No
//    sampleTextField.keyboardType = UIKeyboardType.Default
//    sampleTextField.returnKeyType = UIReturnKeyType.Done
//    sampleTextField.clearButtonMode = UITextFieldViewMode.WhileEditing;
//    sampleTextField.contentVerticalAlignment = UIControlContentVerticalAlignment.Center
//    sampleTextField.delegate = self
//     self.view.addSubview(sampleTextField)
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}

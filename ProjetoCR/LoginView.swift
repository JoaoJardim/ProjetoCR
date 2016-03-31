//
//  LoginView.swift
//  ProjetoCR
//
//  Created by Gabrielle Brandenburg dos Anjos on 3/30/16.
//  Copyright © 2016 João Gabriel Jardim. All rights reserved.
//

import UIKit

class LoginView: UIView {

    let attributes = [
        NSForegroundColorAttributeName: UIColor.whiteColor(),
        NSFontAttributeName : UIFont(name: "Lane - Narrow", size: 24)! // Note the !
    ]
    
    let screenSize:CGRect = UIScreen.mainScreen().bounds
    var usernameTextfield: UITextField!
    var passwordTextfield: UITextField!
    var enterButton: UIButton!
    var signUpButton: UIButton!

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        usernameTextfield.frame = CGRectMake(screenSize.width*0.0603865, screenSize.height*0.372283, screenSize.width*0.785024, screenSize.width*0.785024) // como que faz pra usar view.height/width???????
        usernameTextfield.attributedPlaceholder = NSAttributedString(string: "e-mail", attributes:attributes)
        usernameTextfield.borderStyle = UITextBorderStyle.None
        usernameTextfield.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.3)
        
        passwordTextfield.frame = CGRectMake(screenSize.width*0.0603865, screenSize.height*0.460598, screenSize.width*0.785024, screenSize.width*0.785024)
        passwordTextfield.attributedPlaceholder = NSAttributedString(string: "senha", attributes:attributes)
        passwordTextfield.borderStyle = UITextBorderStyle.None
        passwordTextfield.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.3)
        
        enterButton.frame = CGRectMake(screenSize.width*0.0603865, screenSize.height*0.548913, screenSize.width*0.785024, screenSize.width*0.785024)
        enterButton.backgroundColor = UIColor.whiteColor()
        enterButton.titleLabel!.font = UIFont(name: "Lane - Narrow", size: 24)
        enterButton.titleLabel!.textColor = UIColor.init(red: 216, green: 142, blue: 80, alpha: 1.0) //CRIAR UMA UICOLOR EXTENSION PRA PALETA DE CORES DO APP
        
        
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

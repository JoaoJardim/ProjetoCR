//
//  CadastroController.swift
//  ProjetoCR
//
//  Created by Gabrielle Brandenburg dos Anjos on 3/30/16.
//  Copyright © 2016 João Gabriel Jardim. All rights reserved.
//

import UIKit

class CadastroController: UIViewController, UIScrollViewDelegate {

    var cadastro_View: CadastroView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         // Do any additional setup after loading the view.

        cadastro_View = CadastroView(frame: self.view.frame)
        self.view.addSubview(cadastro_View)
        cadastro_View.scrollViewCadastro.delegate = self
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(CadastroController.keyboardWillShow(_:)), name:UIKeyboardWillShowNotification, object: nil);
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(CadastroController.keyboardWillHide(_:)), name:UIKeyboardWillHideNotification, object: nil);
        
        cadastro_View.okButton.addTarget(self, action: #selector(CadastroController.okButtonPressed), forControlEvents: UIControlEvents.TouchUpInside)
        
        cadastro_View.cancelButton.addTarget(self, action: #selector(CadastroController.cancelButtonPressed), forControlEvents: UIControlEvents.TouchUpInside)
    }
    
    func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.CGRectValue() {
            print(keyboardSize.origin.y)
            print(cadastro_View.scrollViewCadastro.frame.maxY)
            let h = cadastro_View.scrollViewCadastro.frame.maxY - keyboardSize.origin.y
            cadastro_View.scrollViewCadastro.scrollIndicatorInsets.bottom = -h
            cadastro_View.scrollViewCadastro.contentInset.bottom = -h

            //cadastro_View.scrollViewCadastro.frame.size.height = 0.592*view.frame.height - keyboardSize.height
        }
        
    }
    
    func keyboardWillHide(notification: NSNotification) {
        cadastro_View.scrollViewCadastro.scrollIndicatorInsets.bottom = 0
        cadastro_View.scrollViewCadastro.contentInset.bottom = 0
    }
    
    //Função pra pegar as informações do cadastro
    func okButtonPressed(){
        self.performSegueWithIdentifier("BackToLogin", sender: self)
        print("OkButton")
        
    }
    
    func cancelButtonPressed () {
        self.performSegueWithIdentifier("BackToLogin", sender: self)
        print("CancelButton")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        super.touchesBegan(touches, withEvent: event)
        view.endEditing(true)
    }
    func scrollViewWillBeginDragging(scrollView: UIScrollView) {
        view.endEditing(true)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "BackToLogin") {
            let vc = segue.destinationViewController as! LoginController
            // pass data to next view
        }
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

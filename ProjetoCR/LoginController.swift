//
//  LoginController.swift
//  ProjetoCR
//
//  Created by Gabrielle Brandenburg dos Anjos on 3/30/16.
//  Copyright © 2016 João Gabriel Jardim. All rights reserved.
//

import UIKit

class LoginController: UIViewController {

    var login_View: LoginView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        login_View = LoginView(frame: self.view.frame)
        self.view.addSubview(login_View)
        
        login_View.enterButton.addTarget(self, action: #selector(LoginController.enterButtonPressed), forControlEvents: UIControlEvents.TouchUpInside)
        
        login_View.signUpButton.addTarget(self, action: #selector(LoginController.signUpButtonPressed), forControlEvents: UIControlEvents.TouchUpInside)
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
            }
    
    func enterButtonPressed() {
        self.performSegueWithIdentifier("GoToTabBar", sender: self)
    }
    
    func signUpButtonPressed() {
        self.performSegueWithIdentifier("GoToCadastro", sender: self)
    }
    

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "GoToTabBar") {
            let vc = segue.destinationViewController as! UITabBarController
            // pass data to next view
        }
        if (segue.identifier == "GoToCadastro") {
            let vc = segue.destinationViewController as! CadastroController
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

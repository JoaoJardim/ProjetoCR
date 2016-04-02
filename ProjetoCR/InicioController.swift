//
//  HomeController.swift
//  ProjetoCR
//
//  Created by Gabrielle Brandenburg dos Anjos on 3/29/16.
//  Copyright © 2016 João Gabriel Jardim. All rights reserved.
//

import UIKit

class InicioController: UIViewController {

    var inicio_View: InicioView!
    
    override func viewWillAppear(animated: Bool) {
        self.navigationController?.navigationBar.hidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inicio_View = InicioView(frame: self.view.frame, CRType: "CR Acumulado", CR: 7.2, simuText: "Simulação - Período atual", decimals: 0.1)
        self.view.addSubview(inicio_View)
        
        
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillDisappear(animated: Bool) {
        self.navigationController?.navigationBar.hidden = false
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

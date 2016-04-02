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
    var CRTypeTitle = "CR Acumulado"
    var CR = 8.2
    var simuText = "Simulação - Período Atual"
    
    
    override func viewWillAppear(animated: Bool) {
        self.navigationController?.navigationBar.hidden = true
        reloadCRData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inicio_View = InicioView(frame: self.view.frame, CRType: CRTypeTitle, CR: CR, simuText: simuText, decimals: 0.1)
        self.view.addSubview(inicio_View)
        inicio_View.leftButton.addTarget(self, action: #selector(InicioController.leftArrowPressed), forControlEvents: UIControlEvents.TouchUpInside)
        inicio_View.rightButton.addTarget(self, action: #selector(InicioController.rightArrowPressed), forControlEvents: UIControlEvents.TouchUpInside)
        // Do any additional setup after loading the view.
    }
    

    //métodos que alterar o tipo de CR mostrado na tela
    func leftArrowPressed(){
        
    }
    
    func rightArrowPressed(){
        
    }
    
    //Atualiza as informações do CR após uma troca de abas na TabBar (acho que é necessário?)
    func reloadCRData(){
//        CRTypeTitle = "CR Acumulado"
//        CR = 8.2
//        simuText = "Simulação - Período Atual"
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

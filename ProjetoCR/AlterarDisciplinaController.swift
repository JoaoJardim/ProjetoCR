//
//  AlterarDisciplinaController.swift
//  ProjetoCR
//
//  Created by Gabrielle Brandenburg dos Anjos on 3/30/16.
//  Copyright © 2016 João Gabriel Jardim. All rights reserved.
//

import UIKit

class AlterarDisciplinaController: UIViewController {

    var codigoDisciplina = "FIS1051"
    var nomeDisciplina = "Eletromagnetismo"
    
    var alterarDisciplina_View: AlterarDisciplinaView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        alterarDisciplina_View = AlterarDisciplinaView(frame: self.view.frame, subjectCode: codigoDisciplina, subjectName: nomeDisciplina)
        self.view.addSubview(alterarDisciplina_View)
        
        alterarDisciplina_View.G1checkedButton.addTarget(self, action: #selector(AlterarDisciplinaController.changeCheckedStatus(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
     //altera o status do Checked Square (confirma se a nota é real ou simulada)
    func changeCheckedStatus (sender: UIButton!) {
        
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

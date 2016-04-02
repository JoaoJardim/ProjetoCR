//
//  NovaDisciplinaController.swift
//  ProjetoCR
//
//  Created by Gabrielle Brandenburg dos Anjos on 3/30/16.
//  Copyright © 2016 João Gabriel Jardim. All rights reserved.
//

import UIKit

class NovaDisciplinaController: UIViewController {

    var novaDisciplina_View: NovaDisciplinaView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        novaDisciplina_View = NovaDisciplinaView(frame: self.view.frame)
        self.view.addSubview(novaDisciplina_View)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

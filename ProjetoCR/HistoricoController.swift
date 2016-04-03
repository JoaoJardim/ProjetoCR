//
//  HistoryController.swift
//  ProjetoCR
//
//  Created by Gabrielle Brandenburg dos Anjos on 3/29/16.
//  Copyright © 2016 João Gabriel Jardim. All rights reserved.
//

import UIKit

class HistoricoController: UIViewController {
    
    @IBOutlet weak var HistoricoTableView: UITableView!
    
    var historico_View: HistoricoView!

    override func viewWillAppear(animated: Bool) {
        self.navigationController?.navigationBar.hidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        historico_View = HistoricoView(frame: self.view.frame)
        self.view.addSubview(historico_View)
        
        HistoricoTableView.backgroundView = nil

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

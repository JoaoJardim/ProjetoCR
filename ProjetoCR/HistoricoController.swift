//
//  HistoryController.swift
//  ProjetoCR
//
//  Created by Gabrielle Brandenburg dos Anjos on 3/29/16.
//  Copyright © 2016 João Gabriel Jardim. All rights reserved.
//

import UIKit

class HistoricoController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var HistoricoTableView: UITableView!
    
    
    var historico_View: HistoricoView!
    
    var semesters = ["2014.2", "2015.1", "2015.2"]
    var CRSemester = [9.0, 6.7, 7.1]

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
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.semesters.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = HistoricoTableView.dequeueReusableCellWithIdentifier("cellH")! as! SubjectCell
        
        //cell.layoutMargins = UIEdgeInsetsZero
        cell.subjectLabel.text = semesters[indexPath.row]
        cell.gradeLabel.text = "\(CRSemester[indexPath.row])"
        
        return cell
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("You selected cell #\(indexPath.row)!")
        performSegueWithIdentifier("GoToHistoricoPeriodo", sender: self)
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

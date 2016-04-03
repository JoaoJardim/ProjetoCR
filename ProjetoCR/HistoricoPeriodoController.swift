//
//  HistoricoPeriodoController.swift
//  ProjetoCR
//
//  Created by Gabrielle Brandenburg dos Anjos on 3/30/16.
//  Copyright © 2016 João Gabriel Jardim. All rights reserved.
//

import UIKit

class HistoricoPeriodoController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var subjects = ["ENG100", "FIS1041", "MAT1200"]
    var grades = [8.5, 7.3, 7.0]

    var historicoPeriodo_View: HistoricoPeriodoView!
    
    @IBOutlet weak var HistoricoPeriodoTableView: UITableView!
    
    //labels no topo da tableview que informam o período e o CR Semestral daquele período
    @IBOutlet weak var semesterLabel: UILabel!
    @IBOutlet weak var CRSemester: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        historicoPeriodo_View = HistoricoPeriodoView(frame: self.view.frame)
        self.view.addSubview(historicoPeriodo_View)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.subjects.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = HistoricoPeriodoTableView.dequeueReusableCellWithIdentifier("cell")! as! SubjectCell
        
        //cell.layoutMargins = UIEdgeInsetsZero
        cell.subjectLabel.text = subjects[indexPath.row]
        cell.gradeLabel.text = "\(grades[indexPath.row])"
        
        return cell
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("You selected cell #\(indexPath.row)!")
        performSegueWithIdentifier("GoToSubject", sender: self)
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

//
//  MySemesterController.swift
//  ProjetoCR
//
//  Created by Gabrielle Brandenburg dos Anjos on 3/29/16.
//  Copyright © 2016 João Gabriel Jardim. All rights reserved.
//

import UIKit

class MeuPeriodoController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var meuPeriodoTableView: UITableView!
    
    var meuPeriodo_View: MeuPeriodoView!
    
    var subjects: [String] = ["MAT1162", "FIS1041", "ENG1005"]
    var subjGrade: [Double] = [7.0, 7.6, 9.1]
    
    override func viewWillAppear(animated: Bool) {
        self.navigationController?.navigationBar.hidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        meuPeriodo_View = MeuPeriodoView(frame: self.view.frame)
        
        self.view.addSubview(meuPeriodo_View)
        
        //meuPeriodoTableView.registerClass(SubjectCell.self, forCellReuseIdentifier: "cell")
        meuPeriodoTableView.delegate      =   self
        meuPeriodoTableView.dataSource    =   self
        //meuPeriodoTableView.separatorColor = UIColor.whiteColor()
        //meuPeriodoTableView.layoutMargins = UIEdgeInsetsZero
        //meuPeriodoTableView.separatorInset = UIEdgeInsetsZero
        meuPeriodoTableView.backgroundView = nil
        //meuPeriodoTableView.separatorStyle = nil
        
        meuPeriodo_View.addSubjectButton.addTarget(self, action: #selector(MeuPeriodoController.addSubjectPressed), forControlEvents: UIControlEvents.TouchUpInside)

        
        //self.view.addSubview(meuPeriodoTableView)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func addSubjectPressed () {
        performSegueWithIdentifier("GoToNewSubject", sender: self)
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaTodasDisciplinas.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = meuPeriodoTableView.dequeueReusableCellWithIdentifier("cell")! as! SubjectCell
        
        cell.layoutMargins = UIEdgeInsetsZero
        cell.subjectLabel.text = listaTodasDisciplinas[indexPath.row].codigo
        //cell.gradeLabel.text = "\(subjGrade[indexPath.row])"
        
        return cell
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("You selected cell #\(indexPath.row)!")
        performSegueWithIdentifier("GoToSubject", sender: self)
    }
    
    override func viewDidDisappear(animated: Bool) {
        self.navigationController?.navigationBar.hidden = false
    }
    
}

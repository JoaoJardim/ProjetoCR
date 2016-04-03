//
//  AlterarDisciplinaView.swift
//  ProjetoCR
//
//  Created by Gabrielle Brandenburg dos Anjos on 3/30/16.
//  Copyright © 2016 João Gabriel Jardim. All rights reserved.
//

import UIKit

class AlterarDisciplinaView: UIView {
    
    let background: GradientView = GradientView()
    
    let title = UILabel()
    let subtitle = UILabel()
    let grauTitleLabel = UILabel()
    let grau = UILabel()
    
    let addSubjectButton = UIButton()
    let titLabel = UILabel()
    let plusShape = UIImageView()
    
    let G1 = UIView()
    let G2 = UIView()
    let G3 = UIView()
    let G4 = UIView()
    let G1Label = UILabel()
    let G2Label = UILabel()
    var G3Label = UILabel()
    var G4Label = UILabel()
    var G1TextField = UITextField()
    var G2TextField = UITextField()
    var G3TextField = UITextField()
    var G4TextField = UITextField()
    var G1checkedButton = UIButton()
    var G2checkedButton = UIButton()
    var G3checkedButton = UIButton()
    var G4checkedButton = UIButton()
    let G1checkedImage = UIImageView()
    let G1squareImage = UIImageView()
    let G2checkedImage = UIImageView()
    let G2squareImage = UIImageView()
    let G3checkedImage = UIImageView()
    let G3squareImage = UIImageView()
    let G4checkedImage = UIImageView()
    let G4squareImage = UIImageView()

    init(frame: CGRect, subjectCode: String, subjectName: String) {
        super.init(frame: frame)
        self.drawRect(self.frame)
        self.addCustomView(subjectCode, subjectName: subjectName)
        
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setGradeView(grade: UIView, gradeLabel: UILabel, gradeText: String, gradeTextField: UITextField, gradeCheckedButton: UIButton, gradeCheckedImage: UIImageView, gradeCheckedSquareImage: UIImageView) {
        var h = grade.frame.height
        var w = grade.frame.width
        grade.backgroundColor = UIColor.clearColor()
        
        gradeLabel.frame = CGRectMake(0.331*w,0*h,0.214*w,0.935*h)
        gradeLabel.text = gradeText
        grade.addSubview(gradeLabel)
        
        gradeTextField.frame = CGRectMake(0.727*w,0.13*h,0.273*w,0.87*h)
        gradeTextField.backgroundColor = UIColor.whiteColor()
        gradeTextField.textColor = UIColor.blackColor()
        gradeTextField.borderStyle = UITextBorderStyle.None
        gradeTextField.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(1)
        gradeTextField.textAlignment = .Center
        grade.addSubview(gradeTextField)
        
        gradeCheckedButton.frame = CGRectMake(0*w,0.165*h,0.164*w,0.783*h)
        gradeCheckedButton.backgroundColor = UIColor.clearColor()
        grade.addSubview(gradeCheckedButton)
        
        h = gradeCheckedButton.frame.height
        w = gradeCheckedButton.frame.width
        
        gradeCheckedImage.frame = CGRectMake(0.198*w,0.24*h,0.602*w,0.497*h)
        gradeCheckedImage.image = UIImage(named: "checked")
        gradeCheckedButton.addSubview(gradeCheckedImage)
        
        gradeCheckedSquareImage.frame = CGRectMake(0*w,0*h,0.992*w,0.992*h)
        gradeCheckedSquareImage.image = UIImage(named: "checkedsquare")
        gradeCheckedButton.addSubview(gradeCheckedSquareImage)
    }
    
    func addCustomView(subjectCode: String, subjectName: String) {
        let h = frame.height
        let w = frame.width

        let font36: CGFloat = (36/667)*h
        let font18: CGFloat = (18/667)*h
        
        background.frame = CGRectMake(0, 0, w, h)
        background.colors = [UIColor.azul(), UIColor.laranja()]
        self.addSubview(background)
        
        addSubjectButton.frame =  CGRectMake(0.331*w,0.825*h,0.339*w,0.081*h)
        addSubjectButton.backgroundColor = UIColor.clearColor()
        self.addSubview(addSubjectButton)

        
        title.frame = CGRectMake(0.345*w,0.135*h,0.309*w,0.064*h)
        title.text = subjectCode
        title.font = UIFont(name: "Lane - Narrow", size: font36)
        title.textColor = UIColor.whiteColor()
        
        subtitle.frame = CGRectMake(0.315*w,0.199*h,0.373*w,0.031*h)
        title.text = subjectName
        title.textColor = UIColor.whiteColor()
        title.font.fontWithSize(font18)
        
        G1.frame = CGRectMake(0.037*w,0.277*h,0.587*w,0.069*h)
        setGradeView(G1, gradeLabel: G1Label, gradeText: "G1", gradeTextField: G1TextField, gradeCheckedButton: G1checkedButton, gradeCheckedImage: G1checkedImage, gradeCheckedSquareImage: G1squareImage)
        addSubview(G1)
        
        G2.frame = CGRectMake(0.037*w,0.367*h,0.587*w,0.069*h)
        setGradeView(G2, gradeLabel: G2Label, gradeText: "G2", gradeTextField: G2TextField, gradeCheckedButton: G2checkedButton, gradeCheckedImage: G2checkedImage, gradeCheckedSquareImage: G2squareImage)
        addSubview(G2)
        
        G3.frame = CGRectMake(0.037*w,0.457*h,0.587*w,0.069*h)
        setGradeView(G3, gradeLabel: G3Label, gradeText: "G3", gradeTextField: G3TextField, gradeCheckedButton: G3checkedButton, gradeCheckedImage: G3checkedImage, gradeCheckedSquareImage: G3squareImage)
        addSubview(G3)
        
        G4.frame = CGRectMake(0.037*w,0.547*h,0.587*w,0.069*h)
        setGradeView(G4, gradeLabel: G4Label, gradeText: "G3", gradeTextField: G4TextField, gradeCheckedButton: G4checkedButton, gradeCheckedImage: G4checkedImage, gradeCheckedSquareImage: G4squareImage)
        addSubview(G4)
        
        titLabel.text = "Salvar"
        titLabel.frame = CGRectMake(0*w,0.685*h,1*w,0.315*h)
        titLabel.font.fontWithSize(font18)
        titLabel.textColor = UIColor.blackColor()
        titLabel.textAlignment = .Center
        addSubjectButton.addSubview(titLabel)
        
        plusShape.image = UIImage(named: "save")
        plusShape.frame = CGRectMake(0.09*w,0*h,0.09*w,0.09*h)
        addSubjectButton.addSubview(plusShape)
        
    }
    
    

}

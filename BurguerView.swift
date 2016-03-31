//
//  BurguerView.swift
//  ProjetoCR
//
//  Created by Gabrielle Brandenburg dos Anjos on 3/31/16.
//  Copyright © 2016 João Gabriel Jardim. All rights reserved.
//

import UIKit
class MyScrollView: UIScrollView {
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        super.touchesBegan(touches, withEvent: event)
        endEditing(true)
    }
}
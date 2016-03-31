//
//  Global.swift
//  ProjetoCR
//
//  Created by Gabrielle Brandenburg dos Anjos on 3/31/16.
//  Copyright © 2016 João Gabriel Jardim. All rights reserved.
//

import UIKit



class Global {
    
    private static var sharedInstance : Global!
    var fontSize18 : CGFloat!
    
    private init(){
        
    }
    
    class func getSharedInstance() -> Global{
        if sharedInstance == nil{
            sharedInstance = Global()
        }
        return sharedInstance
    }
    
}
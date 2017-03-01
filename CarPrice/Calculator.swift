//
//  Calculator.swift
//  CarPrice
//
//  Created by Дмитрий on 01.03.17.
//  Copyright © 2017 Дмитрий. All rights reserved.
//

import Foundation


struct Calculator {
    
    enum Complect {
        case basic
        case middle
        case top
    }

    var complect:Complect
    var insurance:Double
    
    func calc ()->Double {
        let price:Double = 10_000 + insurance
        
        switch complect {
        case .basic:
            return price
        case .middle:
            return price + 1000
            
        case .top:
            return price + 3000
            
        }
        
        
    }
    
}



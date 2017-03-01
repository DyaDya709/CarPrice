//
//  ComplectationViewController.swift
//  CarPrice
//
//  Created by Дмитрий on 01.03.17.
//  Copyright © 2017 Дмитрий. All rights reserved.
//

import UIKit

class ComplectationViewController: UIViewController {
    @IBOutlet weak var totalPrice: UILabel!
    
    @IBOutlet weak var insuranseField: UITextField!
    
    var calculator:Calculator = Calculator(complect: .basic, insurance: 0)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func complectChanged(_ sender: UISegmentedControl)
    {
    
        switch sender.selectedSegmentIndex {
        case 0:
            calculator.complect = .basic
        
        case 1:
            calculator.complect = .middle
        
        case 2:
            calculator.complect = .top
       
        default:
            fatalError("что то не так")
        }
    
        updateUiPrice()
    
    }
    
    func updateUiPrice(){
      
      calculator.insurance = Double(insuranseField.text ?? "0") ?? 0
totalPrice.text = "Цена комплектации \(calculator.calc())"
        
    }
    


}

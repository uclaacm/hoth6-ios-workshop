//
//  ViewController.swift
//  CalculatorHOTH
//
//  Created by SHIRLY Fang on 2/4/19.
//  Copyright © 2019 me. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var operate = 0

    @IBOutlet weak var answer: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
    }
    @IBOutlet weak var operatorLabel: UILabel!
    
    @IBOutlet weak var number1: UITextField!
    
    
    @IBOutlet weak var number2: UITextField!
    
    
    @IBAction func subtract(_ sender: Any) {
        
     operatorLabel.text = "-"
        
         operate = 1
        
    }
    @IBAction func add(_ sender: Any) {
        
         operatorLabel.text = "+"
         operate = 2
    }
    
    @IBAction func divide(_ sender: Any) {
        
         operatorLabel.text = "/"
         operate = 3
    }
    @IBAction func multiply(_ sender: Any) {
        
         operatorLabel.text = "x"
        
         operate = 4
    }
    
    
    @IBAction func enter(_ sender: Any) {
        
        var num1 = number1.text
        var num2 = number2.text
        
        
        
        if(Int(num1!)==nil || Int(num2!)==nil){
        
        let alert = UIAlertController(title: "Alert", message: "Both of your fields must have numbers!", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))

        self.present(alert, animated: true, completion: nil)
            
        }
        
        else
        
        {
            switch operate {
            case 0:
                let alert = UIAlertController(title: "Alert", message: "You need to choose an operator!", preferredStyle: UIAlertController.Style.alert)
                alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
                
                self.present(alert, animated: true, completion: nil)
                break
            case 1:
                answer.text = String(Int(num1!)! - Int(num2!)!)
                break
                
            case 2:
                answer.text = String(Int(num1!)! + Int(num2!)!)
                break
            case 3:
                answer.text = String(Int(num1!)! / Int(num2!)!)
                break
            case 4:
                answer.text = String(Int(num1!)! * Int(num2!)!)
                break
                
            default:
                let alert = UIAlertController(title: "Alert", message: "You need to choose a n operator!", preferredStyle: UIAlertController.Style.alert)
                alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
                
            }
            print(operate)
            
            
        
            
         
            
            
        }
        
    }
    
    
}

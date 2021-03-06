//
//  ViewController.swift
//  CalculatorHOTH
//
//  Created by SHIRLY Fang on 2/4/19.
//  Copyright © 2019 me. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var answer: UILabel!
    @IBOutlet weak var operatorLabel: UILabel!
    @IBOutlet weak var number1: UITextField!
    @IBOutlet weak var number2: UITextField!
    
    var operate = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        number1.keyboardType = UIKeyboardType.decimalPad
        number2.keyboardType = UIKeyboardType.decimalPad
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tap)
        
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
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
        
        let alert = UIAlertController(title: "Alert", message: " You must choose an operator and both of your fields must have numbers!", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        if let num1 = Double(number1.text!),  let num2 = Double(number2.text!) {
            switch operate {
            case 0:
                self.present(alert, animated: true, completion: nil)
                break
            case 1:
                answer.text = String((num1) - (num2))
                break
            case 2:
                answer.text = String((num1) + (num2))
                break
            case 3:
                answer.text = String((num1) / (num2))
                break
            case 4:
                answer.text = String((num1) * (num2))
                break
            default:
                break
                
            }
        } else {
            self.present(alert, animated: true, completion: nil)
        }

        
    }
    
    
}

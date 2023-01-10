//
//  ViewController.swift
//  Easy Calculator
//
//  Created by Arif Demirkoparan on 10.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textfield1: UITextField!
    @IBOutlet weak var textfield2: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    var senderTitle:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        textfield1.placeholder = "Type the number you want to calculate."
        textfield2.placeholder = "Type the number you want to calculate."
    }
    
    @IBAction func clickToCalculate(_ sender: UIButton) {
        senderTitle = sender.titleLabel?.text!
        if let IntOne = textfield1.text , let IntTwo = textfield2.text {
            if let valueOne = Int(IntOne) , let valueTwo = Int(IntTwo) {
                hesapla(sayi1: valueOne, sayi2: valueTwo)
            }else {
                resultLabel.text = "You entered a non-digit value."
            }
        }
    }
    
    func hesapla(sayi1:Int,sayi2:Int) {
        if senderTitle! == "Add" {
            let result =  sayi1 + sayi2
            resultLabel.text = "Result : \(result)"
        }
        if senderTitle! == "Subtract" {
            let result =  sayi1 - sayi2
            resultLabel.text = "Result : \(result)"
        }
        if senderTitle! == "Multiply" {
            let result =  sayi1 * sayi2
            resultLabel.text = "Result : \(result)"
        }
        if senderTitle! == "Divide" {
            let result =  sayi1 / sayi2
            resultLabel.text = "Result : \(result)"
        }
        
    }
    
}


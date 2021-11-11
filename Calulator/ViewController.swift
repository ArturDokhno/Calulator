//
//  ViewController.swift
//  Calulator
//
//  Created by Артур Дохно on 11.11.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var numberFromScreen: Double = 0
    var firstNum: Double = 0
    var operation: Int = 0
    var mathSing: Bool = false
    
    @IBOutlet var result: UILabel!
    @IBAction func digits(_ sender: UIButton) {
        if mathSing == true {
            result.text = "\(sender.tag)"
            mathSing = false
        } else {
            result.text = result.text! + "\(sender.tag)"
        }
        numberFromScreen = Double(result.text!)!
    }
    
    @IBAction func clear(_ sender: UIButton) {
        if result.text != "" && sender.tag != 10 && sender.tag != 15 {
            firstNum = Double(result.text!)!
            if sender.tag == 11 {
                result.text = "/"
            }
            else if sender.tag == 12 {
                result.text = "x"
            }
            else if sender.tag == 13 {
                result.text = "-"
            }
            else if sender.tag == 14 {
                result.text = "+"
            }
            operation = sender.tag
            mathSing = true
        }
        else if sender.tag == 15 {
            if operation == 11 {
                result.text = String(firstNum / numberFromScreen)
            }
            else if operation == 12 {
                result.text = String(firstNum * numberFromScreen)
            }
            else if operation == 13 {
                result.text = String(firstNum - numberFromScreen)
            }
            else if operation == 14 {
                result.text = String(firstNum + numberFromScreen)
            }
        }
        else if sender.tag == 10 {
            result.text = ""
            firstNum = 0
            numberFromScreen = 0
            operation = 0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
}


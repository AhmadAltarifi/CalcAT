//
//  ViewController.swift
//  CalcAT
//
//  Created by htu on 03/11/2022.
//

import UIKit

class ViewController: UIViewController {

    var opr = ""
    var firstNumber = 0.0
    var secondNumber = 0.0
    var finalResult = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var box: UILabel!
    
    @IBAction func clear(_ sender: Any) {
        box.text = ""
    }
    
    @IBAction func num0(_ sender: Any) {
        box.text = box.text! + "0"
    }
    
    @IBAction func num1(_ sender: Any) {
        box.text = box.text! + "1"
    }
    
    @IBAction func num2(_ sender: Any) {
        box.text = box.text! + "2"
    }
    
    @IBAction func num3(_ sender: Any) {
        box.text = box.text! + "3"
    }
    
    @IBAction func num4(_ sender: Any) {
        box.text = box.text! + "4"
    }
    
    @IBAction func num5(_ sender: Any) {
        box.text = box.text! + "5"
    }
    
    @IBAction func num6(_ sender: Any) {
        box.text = box.text! + "6"
    }
    
    @IBAction func num7(_ sender: Any) {
        box.text = box.text! + "7"
    }
    
    @IBAction func num8(_ sender: Any) {
        box.text = box.text! + "8"
    }
    
    @IBAction func num9(_ sender: Any) {
        box.text = box.text! + "9"
    }
    
    @IBAction func plusOpr(_ sender: Any) {
        opr = "+"
        firstNumber = Double(box.text!)!
        box.text=""
    }
    
    @IBAction func multipleOpr(_ sender: Any) {
        opr = "*"
        firstNumber = Double(box.text!)!
        box.text=""
    }
    
    @IBAction func minusOpr(_ sender: Any) {
        opr = "-"
        firstNumber = Double(box.text!)!
        box.text=""
    }
    
    @IBAction func divOpr(_ sender: Any) {
        opr = "/"
        firstNumber = Double(box.text!)!
        box.text=""
    }
    
    @IBAction func modOpr(_ sender: Any) {
        
        firstNumber = Double(box.text!)!
        box.text = "\(firstNumber / 100)"
    }
    
    @IBAction func result(_ sender: Any) {
        if(opr == "+") {
            secondNumber=Double(box.text!)!
            finalResult = firstNumber + secondNumber
            box.text = String(finalResult)
        } else if (opr == "-") {
            secondNumber=Double(box.text!)!
            finalResult = firstNumber - secondNumber
            box.text = String(finalResult)
        } else if(opr == "*") {
            secondNumber=Double(box.text!)!
            finalResult = firstNumber * secondNumber
            box.text = String(finalResult)
        } else if(opr == "/") {
            secondNumber=Double(box.text!)!
            finalResult = firstNumber / secondNumber
            box.text = String(finalResult)
        } else {
            box.text = box.text
        }
    }
    
    
}


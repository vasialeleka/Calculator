//
//  ViewController.swift
//  Calculator
//
//  Created by Vasia Leleka on 20.05.2019.
//  Copyright © 2019 Vasia Leleka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var  numberFromScreen : Double = 0
    var firstNumber : Double = 0
    var mathSign : Bool = false
    var operation : Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var result: UILabel!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func digits(_ sender: UIButton) {
        if mathSign == true {
            result.text = String(sender.tag)
            mathSign = false
        } else {
            result.text = result.text! + String(sender.tag)
                  }
       
         numberFromScreen = Double(result.text!)!
    }
    
    @IBAction func buttons(_ sender: UIButton) {
        if result.text != "" && sender.tag != 15 && sender.tag != 10
            
        { firstNumber = Double(result.text!)!
            if sender.tag == 11 {
            result.text = "/"
            }else if sender.tag == 12 {
                result.text = "x"
            }else if sender.tag == 13 {
            result.text = "-"
            }else if sender.tag == 14 {
                result.text = "+"
            }
            operation = sender.tag
            mathSign = true
        } else if sender.tag == 15 {
            //equels
            if operation == 11 {result.text = String(firstNumber / numberFromScreen)}
            else if operation == 12 {result.text = String(firstNumber * numberFromScreen)}
            else if operation == 13 {result.text = String(firstNumber - numberFromScreen)}
            else if operation == 14 {result.text = String(firstNumber + numberFromScreen)}
        
        } else if sender.tag == 10{
            result.text = ""
             firstNumber = 0
            numberFromScreen = 0
            operation = 0
        }
        
        }
}


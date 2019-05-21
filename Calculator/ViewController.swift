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
       result.text = result.text! + String(sender.tag)
        numberFromScreen = Double(result.text!)!
        
    
    }
    
    @IBAction func buttons(_ sender: UIButton) {
        if result.text != ""
        { if sender.tag == 11 {
            //Ділення
            }else if sender.tag == 12 {
                //Множення
            }else if sender.tag == 13 {
                //Віднімання
            }else if sender.tag == 14 {
                //Додавання
            }
         }
        }
}


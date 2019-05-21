//
//  ViewController.swift
//  Calculator
//
//  Created by Vasia Leleka on 20.05.2019.
//  Copyright © 2019 Vasia Leleka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

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
    
    }
    
}


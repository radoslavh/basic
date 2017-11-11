//
//  ViewController.swift
//  Swift App
//
//  Created by Radoslav Hlinka on 11/11/2017.
//  Copyright © 2017 Radoslav Hlinka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var coolLabel: UILabel!
    private var counter = 0;
    
    @IBOutlet weak var pushButton: UIButton!
    
    @IBOutlet weak var fieldOne: UITextField!
    @IBOutlet weak var fieldTwo: UITextField!
    
    @IBAction func onClick(_ sender: AnyObject) {
        print(fieldOne)
        print(fieldOne.text!)
        print(fieldTwo.text!)
        let a = Int(fieldOne.text!)!
        let b = Int(fieldTwo.text!)!
        coolLabel.text = "Result \(a + b)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        coolLabel.text = "Hello there!"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


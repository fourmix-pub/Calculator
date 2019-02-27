//
//  ViewController.swift
//  Calculator
//
//  Created by Jie Wu on 2019/02/26.
//  Copyright © 2019 lindelin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var numOneField: UITextField!
    @IBOutlet weak var numTwoField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func clearButton(_ sender: Any) {
        self.resultLabel.text = "0"
    }
    
    @IBAction func showResult(_ sender: Any) {
        let numOne = Int(self.numOneField.text ?? "0")!
        let numTwo = Int(self.numTwoField.text ?? "0")!
        
        let result = numOne + numTwo
        
        self.resultLabel.text = result.description
    }
    
    // キーボードをしまう
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
}


//
//  ViewController.swift
//  candy
//
//  Created by Veena Sehgal on 1/17/15.
//  Copyright (c) 2015 Sehgal Developers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var inputField : UITextField!
    @IBOutlet var output : UITextView!
    @IBOutlet var question : UITextView!
    var x = Int(arc4random_uniform(UInt32(1000 - -1000 + 1)));
    var y = Int(arc4random_uniform(UInt32(1000 - -1000 + 1)));
    
    @IBAction func guess(sender : UIButton) {
        var z = x + y;
        var number = inputField.text.toInt()
        if(number == z){
            output.text = "Get Candy";
        }
        else{
            output.text = "Dont Get Candy, Try Again";
            x = Int(arc4random_uniform(UInt32(1000 - -1000 + 1)));
            y = Int(arc4random_uniform(UInt32(1000 - -1000 + 1)));
            question.text = String(x) + " + " + String(y);
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        question.text = String(x) + " + " + String(y);
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


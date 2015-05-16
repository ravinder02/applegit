//
//  ViewController.swift
//  isItPrime
//
//  Created by rkaur on 2/21/15.
//  Copyright (c) 2015 com.rkaur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enteredText: UITextField!
    
    @IBOutlet weak var errorLabel: UILabel!
    @IBAction func checkButtin(sender: AnyObject)
    {
        var number = enteredText.text.toInt()
       
        if number != nil
        {
            if number == 0 || number == 1 {
            errorLabel.text = "Number is not Prime"
            }
            
            else if number! == 2  {
                 errorLabel.text = "Number is Prime"
            }
            else {
            for ( var i = 2; i < number; i++){
                if (number! % i == 0) {
                    self.errorLabel.text = "number is not prime"
                    break
                                    }
                else {
                    self.errorLabel.text = "number is prime"
                }
                }
            }
        }
        else {
            self.errorLabel.text = "Enter number"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


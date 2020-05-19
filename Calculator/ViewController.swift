//
//  ViewController.swift
//  Calculator
//
//  Created by clicklabs on 19/05/20.
//  Copyright © 2020 clicklabs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstValue: UITextField!
    @IBOutlet weak var secondValue: UITextField!
    @IBOutlet weak var response: UILabel!
    @IBOutlet weak var addButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        response.text = "Response will be here!!";
    }

    @IBAction func buttonClick(_ sender: Any) {
        guard let button = sender as? UIButton else{
            return;
        }
        print(button);
        if (firstValue.text!).isEmpty && (secondValue.text!).isEmpty {
            response.text = "Please enter numbers first!!";
            return;
        }
        let first = Double(firstValue.text!)!;
        let second = Double(secondValue.text!)!;
        
        switch button.tag {
            case 0:
                response.text = String(first+second);
            case 1:
                response.text = String(first-second);
            case 2:
                response.text = String(first*second);
            case 3:
                response.text = String(first/second);
            default:
                print("unknown click");
        }
    }
    @IBAction func clearFields(_ sender: Any) {
        response.text = "Response will be here!!";
        firstValue.text = nil;
        secondValue.text = nil;
    }
}


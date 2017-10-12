//
//  ViewController.swift
//  SimpleStackImplementation
//
//  Created by Richard Muraguri Gathogo on 12/10/2017.
//  Copyright © 2017 Richard Muraguri Gathogo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var valuePushedTextField: UITextField!
    @IBAction func push(_ sender: UIButton) {
        if !(valuePushedTextField.text?.isEmpty)! {
            if let value = Int(valuePushedTextField.text!) {
                stack.push(data: value)
            } else{
                
            }
            valuePushedTextField.text = ""
            self.stackItems = stack.print()
        }
    }
    @IBOutlet weak var valuePoppedLabel: UILabel!
    
    @IBAction func pop(_ sender: UIButton) {
        if let poppedValue = stack.pop() {
            self.valuePoppedLabel.text = "popped value: \(poppedValue) "
        } else{
             self.valuePoppedLabel.text = "The stack is empty "
        }
        self.stackItems = stack.print()
    }
    
    @IBOutlet weak var stackItemsLabel: UILabel!
    
    var stack = Stack()
    var stackItems : [Int] = []{
        didSet{
            stackItemsLabel?.text = stackItems.isEmpty ? "":stackItems.description
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.stackItems = stack.print()
        
    }


}


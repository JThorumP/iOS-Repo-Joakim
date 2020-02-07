//
//  ViewController.swift
//  HelloWorld
//
//  Created by Joakim Poulsen on 07/02/2020.
//  Copyright © 2020 Joakim Poulsen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var btn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
}
    
    @IBAction func btnPressed(_ sender: Any) {
        
        
        if let name = textField.text{
            label.text = "Hello \(name)"
        }
    }
    
}


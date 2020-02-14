//
//  ViewController.swift
//  MyNotebook
//
//  Created by Joakim Poulsen on 14/02/2020.
//  Copyright © 2020 Joakim Poulsen. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
   
    var currentRow = -1
    
    var text = ""
   
    var savedText = "Write here!"
   
    var textArray = [String]()
    
    @IBOutlet weak var textView: UITextView!
    
    @IBOutlet weak var btn: UIButton!
    
    @IBOutlet weak var tabelView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textArray.append("Hello")
        textArray.append("How are you?")
        
        tabelView.dataSource = self
        tabelView.delegate = self
    }

    override func viewWillAppear(_ animated: Bool) {
        textView.text = savedText
    }
    
    @IBAction func saveText(_ sender: Any) {
        
        text = textView.text
        
        if currentRow > -1 {
            textArray[currentRow] = text
            currentRow = -1
        } else{
             textArray.append(text)
        }
        
        textView.text = ""
        tabelView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return textArray.count
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1")
        cell?.textLabel?.text = textArray[indexPath.row]
        return cell!
       }
       
    func tableView(_ tabelView: UITableView, didSelectRowAt indexPath: IndexPath){
        tabelView.deselectRow(at: indexPath, animated: true)
        currentRow = indexPath.row
        textView.text = textArray[currentRow]
    }
    
    

}



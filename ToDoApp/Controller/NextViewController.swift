//
//  NextViewController.swift
//  ToDoApp
//
//  Created by HiroakiSaito on 2021/08/23.
//

import UIKit

var toDoString = [String]()

class NextViewController: UIViewController {

    

    @IBOutlet weak var todoLabel: UILabel!
    
    @IBOutlet weak var todoTitle: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        todoTitle.text = ""
        
    }
    

    
    @IBAction func addtodoButton(_ sender: Any) {
        
        toDoString.append(todoTitle.text!)
        todoTitle.text = ""
        UserDefaults.standard.set(toDoString,forKey: "ToDO")
        
    }
    
}

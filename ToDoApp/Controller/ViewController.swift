//
//  ViewController.swift
//  ToDoApp
//
//  Created by HiroakiSaito on 2021/08/23.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if UserDefaults.standard.object(forKey: "ToDo") != nil{
            
            toDoString = UserDefaults.standard.object(forKey: "ToDo") as! [String]
            
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return toDoString.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let ToDocell : UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "ToDocell", for: indexPath)
        
        ToDocell.textLabel!.text = toDoString[indexPath.row]
        return ToDocell
        
    }
    
    
    

}


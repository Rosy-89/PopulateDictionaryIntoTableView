//
//  ViewController.swift
//  PopulateDictionaryIntoTableView
//
//  Created by Alok Kumar Naik on 12/02/2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var tableViewOutlet: UITableView!
    
    var myDictionary: [String:String] = ["Chocolate Chip": "0.25","Oatmeal": "0.26",
                                         "Peanut Butter": "0.02", "Sugar": "0.03",
                                         "VanilaExtract": "0.01","CocoPowder": "1",
                                         "b": "2", "c": "3","d": "4","e": "5"]
    //var valuesArray = [String]()
    //let keyArray = [String](myDictionary.keys)
   
    
    var valueArray: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        for myKey in myDictionary.keys{
            
            valueArray.append(myKey)
        }
        
        tableViewOutlet.dataSource = self
        tableViewOutlet.delegate = self
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        myDictionary.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath)
        cell.textLabel?.text = valueArray[indexPath.row]
        return cell
    }

}


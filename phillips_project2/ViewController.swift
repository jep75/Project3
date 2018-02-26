//
//  ViewController.swift
//  phillips_project2
//
//  Created by John Phillips on 2/26/18.
//  Copyright © 2018 John Phillips. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        guard let classURL = Bundle.main.url(forResource: "stats", withExtension:"plist") else {
            print("Error: Unable to form path")
            return
        }
        
        // data in resource file
        // Note: Using try requires catch
        // Note: Using try? converts thrown error to nil
        guard let data = try? Data(contentsOf:classURL) else {
            print("Error: Invalid Data")
            return
        }
        
        // convert the class data plist to a class dictionary
        // Note: Using as? creates [String:String]?
        // Note: Using as! creates [String:String]
        guard let classData = try? PropertyListSerialization.propertyList(from: data, options: [], format: nil) as? [String:String] else {
            print("Error: Bad data format for property list")
            return
        }
        
        // access class name
        // Note: If used as? above, then classData?["Name"]
        // Note: If used as! above, then classData["Name"]
        guard let className = classData?["Name"] else {
            print("Error: Field 'Name' doest not exist in the dictionary")
            return
        }
        
        // use the classname
        print(className)
    }
}


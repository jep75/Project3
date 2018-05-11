//
//  TodayViewController.swift
//  today
//
//  Created by John Phillips on 5/10/18.
//  Copyright © 2018 John Phillips. All rights reserved.
//

import UIKit
import NotificationCenter

class TodayViewController: UIViewController, NCWidgetProviding {
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view from its nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let name = UserDefaults.init(suiteName: "group.com.r.phillips_project2")?.value(forKey: "name")
        let level = UserDefaults.init(suiteName: "group.com.r.phillips_project2")?.value(forKey: "level")
        let age = UserDefaults.init(suiteName: "group.com.r.phillips_project2")?.value(forKey: "age")
        label.text = "\(name!) is level \(level!), age \(age!)!"
        
    }
    
    @IBOutlet weak var label: UILabel!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func widgetPerformUpdate(completionHandler: (@escaping (NCUpdateResult) -> Void)) {
        // Perform any setup necessary in order to update the view.
        
        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData
        
        completionHandler(NCUpdateResult.newData)
    }
    
}

//
//  Bulba.swift
//  phillips_project2
//
//  Created by John Phillips on 5/10/18.
//  Copyright © 2018 John Phillips. All rights reserved.
//

import UIKit

class Bulba: UIViewController {

    @IBOutlet weak var mainscroll: UIScrollView!
    @IBOutlet weak var enter: UIButton!
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var level: UILabel!
    @IBOutlet weak var levelnum: UITextField!
    @IBOutlet weak var age: UILabel!
    @IBOutlet weak var agenum: UITextField!
    @IBOutlet weak var share: UIButton!
    
    var imageArray = [UIImage]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageArray = [#imageLiteral(resourceName: "berbasuar"), #imageLiteral(resourceName: "buffasaur"), #imageLiteral(resourceName: "cageasaur")]
        
        for i in 0..<imageArray.count{
            
            let imageView = UIImageView()
            imageView.image = imageArray[i]
            let xPosition = self.view.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPosition, y: 0, width: self.mainscroll.frame.width, height: self.mainscroll.frame.height)
            
            mainscroll.contentSize.width = mainscroll.frame.width * CGFloat(i+1)
            mainscroll.addSubview(imageView)
            
        }
    }
    
    func canBecomeFirstResponder() -> Bool {
        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func set(_ sender: Any) {
        label.text = name.text
        level.text = levelnum.text
        age.text = agenum.text
        
        UserDefaults.init(suiteName: "group.com.r.phillips_project2")?.set(name.text, forKey: "name")
        UserDefaults.init(suiteName: "group.com.r.phillips_project2")?.set(levelnum.text, forKey: "level")
        UserDefaults.init(suiteName: "group.com.r.phillips_project2")?.set(agenum.text, forKey: "age")
    }
    
    @IBAction func sharing(_ sender: Any) {
        let texttoshare = "My \(name!) is level \(level!), age \(age!)! Check out some other pokes at Bulbapedia!"
        let URLtoshare = NSURL(string: "https://bulbapedia.bulbagarden.net/wiki/Main_Page")
        
        let activityVC = UIActivityViewController(activityItems: [texttoshare, URLtoshare!], applicationActivities: nil)
        
        present(activityVC, animated: true, completion:nil)
        
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

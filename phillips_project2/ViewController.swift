//
//  ViewController.swift
//  phillips_project2
//
//  Created by John Phillips on 2/26/18.
//  Copyright © 2018 John Phillips. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var pokeName: UITextField!
    @IBOutlet weak var pokedex: UITextField!
    @IBOutlet weak var age: UITextField!
    @IBOutlet weak var Shiny: UITextField!
    @IBOutlet weak var date: UITextField!
    @IBOutlet weak var enter: UIButton!
    
    let images = ["cher1", "cher2", "cher3"]
    var currentImage = 1
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if event?.subtype == UIEventSubtype.motionShake{
            imageView.image = UIImage(named: images[currentImage] + ".png")
        }
        if(currentImage == images.count-1){
            currentImage = 0
        }
        else{
            currentImage += 1
        }
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        if let path = Bundle.main.path(forResource: "stats", ofType: "plist") {
            let dictRoot = NSDictionary(contentsOfFile: path)
            if let dict = dictRoot {
                let val1 = dict["Name"]
                let val2 = dict["Pokedex Number"]
                let val3 = dict["Age"]
                let val4 = dict["Shiny"]
                let val5 = dict["Date Caught"]
                
                pokeName.text = "\(val1!)"
                pokedex.text = "\(val2!)"
                age.text = "\(val3!)"
                Shiny.text = "\(val4!)"
                date.text = "\(val5!)"
            }
        }
       
    }
}

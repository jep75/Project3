//
//  map.swift
//  phillips_project2
//
//  Created by John Phillips on 5/10/18.
//  Copyright © 2018 John Phillips. All rights reserved.
//

import UIKit
import MapKit

class map: UIViewController {

    
    @IBOutlet weak var map: MKMapView!
    var pin: AnnotationPin!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let coordinate = CLLocationCoordinate2D(latitude: 41.077644, longitude: -81.511168)
        let region = MKCoordinateRegionMakeWithDistance(coordinate, 1000, 1000)
        map.setRegion(region, animated: true)
        
        pin = AnnotationPin(title: "New Pokemon!", Subtitle: "This one you haven't caught yet", coordinate: coordinate)
        map.addAnnotation(pin)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

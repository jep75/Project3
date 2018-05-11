//
//  AnnotationPin.swift
//  phillips_project2
//
//  Created by John Phillips on 5/10/18.
//  Copyright © 2018 John Phillips. All rights reserved.
//

import MapKit

class AnnotationPin: NSObject, MKAnnotation {
    var title: String?
    var subtitle: String?
    var coordinate: CLLocationCoordinate2D
    
    init(title: String, Subtitle: String, coordinate: CLLocationCoordinate2D){
        self.title = title
        self.subtitle = Subtitle
        self.coordinate = coordinate
    }
}

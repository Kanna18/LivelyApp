//
//  CustomAnnotation.swift
//  Lively
//
//  Created by Dineshkumar kothuri on 03/05/20.
//  Copyright © 2020 Dineshkumar kothuri. All rights reserved.
//

import UIKit
import MapKit

class CityAnnotation: NSObject,MKAnnotation {
    
    
       var coordinate: CLLocationCoordinate2D
       var title: String?
       var numberOfAvailableHouses : String?
       
       // 4
       init(coor: CLLocationCoordinate2D)
       {
           coordinate = coor
       }

    
}

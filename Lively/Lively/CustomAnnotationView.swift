//
//  CustomAnnotationView.swift
//  Lively
//
//  Created by Dineshkumar kothuri on 03/05/20.
//  Copyright © 2020 Dineshkumar kothuri. All rights reserved.
//

import UIKit
import MapKit

class CustomAnnotationView: MKAnnotationView {

    init(annotation: MKAnnotation?, reuseIdentifier: String?, textNumber:String) {
        super.init(annotation: annotation, reuseIdentifier: reuseIdentifier)
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 25, height: 25))
        label.adjustsFontSizeToFitWidth = true
        label.textAlignment = .center
        label.font = UIFont.init(name: "Helvetica", size: 12)
        label.backgroundColor = .white
        label.text = textNumber
        let img = UIImage.imageWithLabel(label: label)
        self.image = img
        self.layer.cornerRadius = self.layer.frame.size.height/2
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.black.cgColor
        self.clipsToBounds = true
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
           
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}

extension UIImage {
    class func imageWithLabel(label: UILabel) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(label.bounds.size, false, 0.0)
        label.layer.render(in: UIGraphicsGetCurrentContext()!)
        let img = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return img!
    }
}


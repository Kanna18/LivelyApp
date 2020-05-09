//
//  DetailMapViewController.swift
//  Lively
//
//  Created by sramika mangalapurapu on 5/6/20.
//  Copyright © 2020 Dineshkumar kothuri. All rights reserved.
//

import UIKit
import MapKit

class DetailMapViewController: UIViewController, MKMapViewDelegate {
     var cityArray : [CitiesJsonFormat]?
    var detailedObj : PropertyJsonFormat? = nil
  
    
    
    @IBOutlet weak var detailMapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
         detailMapView.delegate = self
        let coord = CLLocationCoordinate2D.init(latitude: Double(detailedObj!.lat)!, longitude: Double(detailedObj!.lon)!)
        let annot = CityAnnotation.init(coor: coord)
        detailMapView.addAnnotation(annot);
        detailMapView.setCenter(coord, animated: true)
    
    }

    
//    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView?
//    {
//        if annotation.isKind(of: CityAnnotation.self){
//        let cityAnn = annotation as! CityAnnotation
//       // let annotView = CustomAnnotationView.init(annotation: annotation, reuseIdentifier: "points", textNumber:cityAnn.numberOfAvailableHouses ?? "0")
//
//        return annotView
//
    
    
   
    @IBAction func backBtnAction(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


}




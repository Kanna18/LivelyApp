//
//  MapViewController.swift
//  Lively
//
//  Created by Dineshkumar kothuri on 28/04/20.
//  Copyright © 2020 Dineshkumar kothuri. All rights reserved.
//

import UIKit
import MapKit
class MapViewController: UIViewController,MKMapViewDelegate {
    
    let tapToFind = UITapGestureRecognizer()
    var citiesArr : [CitiesJsonFormat]?
    
    @IBOutlet weak var listingsContainer: UIView!
    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
//        tapToFind.addTarget(self, action: #selector(findLocationCoordinates))
//        tapToFind.numberOfTapsRequired = 1;
//        mapView.addGestureRecognizer(tapToFind)
        listingsContainer.isHidden = true
        
        /**Loading Json From local File and adding to map**/
        if let path = Bundle.main.path(forResource: "points", ofType: "json"){
            do{
                let url = URL.init(fileURLWithPath: path)
                let data = try? Data.init(contentsOf: url, options: .mappedIfSafe)
                let json = try? JSONSerialization.jsonObject(with: data!) as? [Dictionary<String,Any>]
                for item in json! {
                    let mpObj = CitiesJsonFormat.init(dict: item)
                    citiesArr?.append(mpObj)
                    let coord = CLLocationCoordinate2D.init(latitude: Double(mpObj.lat)!, longitude: Double(mpObj.lon)!)
                    let annot = CityAnnotation.init(coor: coord)
                    annot.numberOfAvailableHouses = String(mpObj.numberOfProperties);
                    annot.title = mpObj.name
                    mapView.addAnnotation(annot);
                    mapView.setCenter(coord, animated: true)

                    
                }
            }
            
        }
        
    }
    
//    @objc func findLocationCoordinates(sender: UITapGestureRecognizer){
//
//        let loc = sender.location(in: mapView)
//        let coord = mapView.convert(loc, toCoordinateFrom: mapView)
//        let annot = CityAnnotation.init(coor: coord)
//        annot.numberOfAvailableHouses = "300";
//        annot.title = "HI"
//        mapView.addAnnotation(annot);
//        mapView.setCenter(coord, animated: true)
//
//    }
    
    @IBAction func zoomtoLocation(_ sender: Any) {
        let coordinate = CLLocationCoordinate2DMake(17.3850, 78.4867)
        let region = MKCoordinateRegion.init(center: coordinate, latitudinalMeters: 0.5 , longitudinalMeters: 0.5)
        mapView.setRegion(region, animated: true)
    }
   
    //MARK: -MapView Delegates
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView?
    {
        if annotation.isKind(of: CityAnnotation.self){
        let cityAnn = annotation as! CityAnnotation
        let annotView = CustomAnnotationView.init(annotation: annotation, reuseIdentifier: "points", textNumber:cityAnn.numberOfAvailableHouses ?? "0")
        
        return annotView
    }
        
        return nil
        
    }
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        listingsContainer.isHidden = false
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

struct CitiesJsonFormat {
    var lat : String
    var lon : String
    var img : String
    var name : String
    var address : String
    var flag : String
    var favourite : String
    var bookMark : String
    var numberOfProperties : Int
   
   init(dict : Dictionary<String,Any>) {
        lat = dict["lat"] as! String
        lon = dict["lon"] as! String
        img = dict["img"] as! String
        name = dict["name"] as! String
        flag = dict["flag"] as! String
        address = dict["address"] as! String
        favourite = dict["favourite"] as! String
        bookMark = dict["bookMark"] as! String
        numberOfProperties = dict["numberOfProperties"] as! Int
    }
}

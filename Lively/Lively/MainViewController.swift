//
//  MainViewController.swift
//  Lively
//
//  Created by Dineshkumar kothuri on 28/04/20.
//  Copyright © 2020 Dineshkumar kothuri. All rights reserved.
//

import UIKit
import CoreMotion

class MainViewController: UIViewController {
    @IBOutlet weak var btn2: UIButton!
    
    @IBOutlet weak var filtersView: UIView!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var mapContainer: UIView!
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var listingsContainer: UIView!
    @IBOutlet weak var selectionSegment: UISegmentedControl!
    var mapRef : MapViewController?
    var citiVCRef : CitiesCollectionViewController?
    var window :UIWindow = UIApplication.shared.windows.filter {$0.isKeyWindow}.first!
//    let window = UIApplication.shared.connectedScenes
//    .filter({$0.activationState == .foregroundActive})
//    .map({$0 as? UIWindowScene})
//    .compactMap({$0})
//    .first?.windows
//    .filter({$0.isKeyWindow}).first
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        searchBar.searchTextField.delegate = self
        self.filtersView.clipsToBounds = true
        [btn1,btn2,btn3,btn4].forEach{
            $0?.layer.cornerRadius = 5
            $0?.layer.borderWidth = 1
            $0?.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
            $0?.addTarget(self, action: #selector(filterClicks(sender:)), for: .touchUpInside)
            self.heightConstraint.constant = 0
        }
        // Do any additional setup after loading the view.
        let button = UIButton.init(type: .custom)
        
        button.frame = CGRect.init(x: window.frame.size.width/2 - 25, y: window.frame.size.height - 80, width: 50, height: 50)
        button.setBackgroundImage(#imageLiteral(resourceName: "plus"), for: .normal)
        window.addSubview(button)
        window.windowLevel = UIWindow.Level(rawValue: 1)    
    }
    
    @objc func filterClicks(sender:UIButton)  {
        [btn1,btn2,btn3,btn4].forEach{
            $0?.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
            $0?.setTitleColor(.systemBlue, for: .normal)
            $0?.backgroundColor = .white
        }
        sender.backgroundColor = .systemBlue
        sender.setTitleColor(.white, for: .normal)
        sender.layer.borderColor = #colorLiteral(red: 0.3192586005, green: 0.6453168988, blue: 0.7342402935, alpha: 1)
    }
    
    @IBAction func segmentClick(_ sender: Any) {
        
        if selectionSegment.selectedSegmentIndex == 0{
            self.mapContainer.isHidden = false
            self.listingsContainer.isHidden = true
        }
        if selectionSegment.selectedSegmentIndex == 1{
            self.mapContainer.isHidden = true
            self.listingsContainer.isHidden = false
        }
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
        if segue.identifier == "citiesSegue"{
            citiVCRef = segue.destination as? CitiesCollectionViewController
        }
        if segue.identifier == "mapSegue"{
            mapRef = segue.destination as? MapViewController
        }
    }
    

}
extension MainViewController : UISearchBarDelegate, UITextFieldDelegate{
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        
        UIView.animate(withDuration: 0.2) {
            self.heightConstraint.constant = 50
        }
        
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        UIView.animate(withDuration: 0.2) {
            self.heightConstraint.constant = 0
        }
        
        textField.resignFirstResponder()
        return true
    }
    
}

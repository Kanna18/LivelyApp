//
//  MainViewController.swift
//  Lively
//
//  Created by Dineshkumar kothuri on 28/04/20.
//  Copyright © 2020 Dineshkumar kothuri. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var mapContainer: UIView!
    @IBOutlet weak var listingsContainer: UIView!
    @IBOutlet weak var selectionSegment: UISegmentedControl!
    var window :UIWindow = UIApplication.shared.keyWindow!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let button = UIButton.init(type: .custom)
        
        button.frame = CGRect.init(x: window.frame.size.width/2 - 25, y: window.frame.size.height - 80, width: 50, height: 50)
        button.setBackgroundImage(UIImage.init(named: "plus"), for: .normal)
        window.addSubview(button)
        window.windowLevel = UIWindow.Level(rawValue: 1)


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
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

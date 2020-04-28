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
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

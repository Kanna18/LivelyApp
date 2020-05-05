//
//  DetailViewController.swift
//  Lively
//
//  Created by sramika mangalapurapu on 5/5/20.
//  Copyright © 2020 Dineshkumar kothuri. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailImgView: UIImageView!
    @IBOutlet weak var detailMainTV: UITextView!
    @IBOutlet weak var detailParaTV: UITextView!
    @IBOutlet weak var backBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func bookBtnACtion(_ sender: Any) {
    }
    
    @IBAction func mapBtnAction(_ sender: Any) {
    }
    @IBAction func backBtnAction(_ sender: Any) {
    }
    
     @IBAction func flagBtnAction(_ sender: Any) {
     }
    
    @IBAction func favBtnAction(_ sender: Any) {
    }
    //
    @IBAction func shareBtnAction(_ sender: Any) {
    }
    //// MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
   // */

}

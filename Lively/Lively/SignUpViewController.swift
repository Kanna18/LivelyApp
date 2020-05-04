//
//  SignUpViewController.swift
//  Lively
//
//  Created by sramika mangalapurapu on 4/30/20.
//  Copyright © 2020 Dineshkumar kothuri. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var newAcountLbl: UILabel!

    @IBOutlet weak var paswdTxtF: UITextField!
    @IBOutlet weak var fullNameTxtF: UITextField!
    @IBOutlet weak var emailTxtF: UITextField!
    @IBOutlet weak var signUpWithLbl: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func closeBtnActn(_ sender: Any) {
        self.dismiss(animated: false, completion: nil)
           
    }
    
    @IBAction func signInBtn(_ sender: Any) {
         let vc = self.storyboard?.instantiateViewController(identifier: "tabBarVC") as! UITabBarController
               vc.modalPresentationStyle = .fullScreen
               
               self.present(vc, animated: true, completion: nil)
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

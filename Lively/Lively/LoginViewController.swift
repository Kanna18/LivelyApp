//
//  LoginViewController.swift
//  Lively
//
//  Created by sramika mangalapurapu on 4/29/20.
//  Copyright © 2020 Dineshkumar kothuri. All rights reserved.
//



import UIKit

class LoginViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var emailTf: UITextField!
    
    @IBOutlet weak var paswdTf: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTf.delegate = self
        paswdTf.delegate = self
     
        
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func signInCLick(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(identifier: "tabBarVC") as! UITabBarController
        vc.modalPresentationStyle = .fullScreen
        
        self.present(vc, animated: true, completion: nil)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()        
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

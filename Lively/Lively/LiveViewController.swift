//
//  LiveViewController.swift
//  Lively
//
//  Created by Dineshkumar kothuri on 03/05/20.
//  Copyright © 2020 Dineshkumar kothuri. All rights reserved.
//

import UIKit
import TwilioVideo
class LiveViewController: UIViewController , UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var liveOpenLbl: UILabel!
    @IBOutlet weak var localtyLbl: UILabel!
    var liveCellIdentifier = "liveCell"
    @IBOutlet weak var liveTableView: UITableView!
        

    override func viewDidLoad() {
        liveTableView.delegate = self
        liveTableView.dataSource = self
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @objc func createARoom(sender:UIButton){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "TwilioViewController") as! TwilioCallViewController
        let nav = UINavigationController.init(rootViewController: vc)
        self.present(nav, animated: true, completion: nil)
        
    }


    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 388;//Choose your custom row height
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
         let cell = tableView.dequeueReusableCell(withIdentifier: liveCellIdentifier, for: indexPath) as! LiveTableViewCell
    
        cell.callButton.addTarget(self, action: #selector(createARoom(sender:)), for: .touchUpInside)
         return cell
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

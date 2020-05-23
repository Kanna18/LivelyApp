//
//  ListingsViewController.swift
//  Lively
//
//  Created by sramika mangalapurapu on 5/4/20.
//  Copyright © 2020 Dineshkumar kothuri. All rights reserved.
//

import UIKit

class ListingsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var noOflistingsLabel: UILabel!
    @IBOutlet weak var tableViewData: UITableView!
    var listingsCount : String = ""
    var cellIdentifier = "cell"
    var listArr = [PropertyJsonFormat]()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.getJson()
        tableViewData.delegate = self
        tableViewData.dataSource = self
        self.noOflistingsLabel.text = listingsCount
        // Do any additional setup after loading the view.
    }
    
    func getJson() {
        if let path = Bundle.main.path(forResource: "Listings", ofType: "json"){
            do{
                let url = URL.init(fileURLWithPath: path)
                let data = try? Data.init(contentsOf: url, options: .mappedIfSafe)
                let json = try? JSONSerialization.jsonObject(with: data!) as? [Dictionary<String,Any>]
                for item in json! {
                    let mpObj = PropertyJsonFormat.init(dict: item)
                    listArr.append(mpObj)
                }
                DispatchQueue.main.async {
                    self.tableViewData.reloadData()
                }
            }
            
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120;//Choose your custom row height
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listArr.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! ListTableViewCell
        let obj = listArr[indexPath.row]
        cell.listTextV.text = "\(obj.flat) \(obj.street) \n \(obj.city) \(obj.cost)"
         return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc  = GlobalStoryBoard().detailViewController
        vc.modalPresentationStyle = .fullScreen
        let obj = listArr[indexPath.row]
        vc.detailedObj = obj
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

    @IBAction func backClick(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}



struct PropertyJsonFormat {
    var lat : String
    var lon : String
    var img : [String]
    var name : String
    var flag : Bool
    var favourite : Bool
    var bookMark : Bool
    var flat : String
    var street : String
    var city : String
    var State : String
    var dimensions : String
    var cost : String
    var isLive : Bool
    var description : String
   
   init(dict : Dictionary<String,Any>) {

        lat = dict["lat"] as! String
        lon = dict["lon"] as! String
        img = dict["img"] as! [String]
        name = dict["name"] as! String
        flag = dict["flag"] as! Bool
        favourite = dict["favourite"] as! Bool
        flat  = dict["flat"] as! String
        bookMark = dict["bookMark"] as! Bool
        street = dict["street"] as! String
        city = dict["city"] as! String
        State = dict["State"] as! String
        dimensions = dict["dimensions"] as! String
        cost = dict["cost"] as! String
        isLive = dict["isLive"] as! Bool
        description = dict["description"] as! String
    
    }
    
}

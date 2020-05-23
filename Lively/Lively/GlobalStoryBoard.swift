//
//  GlobalStoryBoard.swift
//  Lively
//
//  Created by Dineshkumar kothuri on 23/05/20.
//  Copyright © 2020 Dineshkumar kothuri. All rights reserved.
//

import UIKit

let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)

class GlobalStoryBoard {
    var settingsTableViewController : SettingsTableViewController{
              return storyBoard.instantiateViewController(withIdentifier: "SettingsTableViewController") as! SettingsTableViewController
    }
    var twilioCallViewController : TwilioCallViewController{
              return storyBoard.instantiateViewController(withIdentifier: "TwilioCallViewController") as! TwilioCallViewController
    }
    var detailMapViewController : DetailMapViewController{
              return storyBoard.instantiateViewController(withIdentifier: "DetailMapViewController") as! DetailMapViewController
    }
    var listingsViewController : ListingsViewController{
              return storyBoard.instantiateViewController(withIdentifier: "ListingsViewController") as! ListingsViewController
    }
    var detailViewController : DetailViewController{
              return storyBoard.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
    }
    var mapViewController : MapViewController{
              return storyBoard.instantiateViewController(withIdentifier: "MapViewController") as! MapViewController
    }
    var citiesCollectionViewController : CitiesCollectionViewController{
              return storyBoard.instantiateViewController(withIdentifier: "CitiesCollectionViewController") as! CitiesCollectionViewController
    }
    var liveViewController : LiveViewController{
           return storyBoard.instantiateViewController(withIdentifier: "LiveViewController") as! LiveViewController
    }
    var profileViewController : ProfileViewController{
           return storyBoard.instantiateViewController(withIdentifier: "ProfileViewController") as! ProfileViewController
    }
    var loginViewController : LoginViewController{
        return storyBoard.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
    }
    var signUpViewController : SignUpViewController{
        return storyBoard.instantiateViewController(withIdentifier: "SignUpViewController") as! SignUpViewController
    }
    var mainViewController : MainViewController{
        return storyBoard.instantiateViewController(withIdentifier: "MainViewController") as! MainViewController
    }
    var searchViewController : SearchViewController{
           return storyBoard.instantiateViewController(withIdentifier: "SearchViewController") as! SearchViewController
    }
    var tabBarVC : UITabBarController {
        return storyBoard.instantiateViewController(withIdentifier: "tabBarVC") as! UITabBarController
    }
}

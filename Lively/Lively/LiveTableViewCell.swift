//
//  LiveTableViewCell.swift
//  Lively
//
//  Created by sramika mangalapurapu on 5/4/20.
//  Copyright © 2020 Dineshkumar kothuri. All rights reserved.
//

import UIKit

class LiveTableViewCell: UITableViewCell {

    @IBOutlet weak var callButton: UIButton!
    @IBOutlet weak var imgView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.imgView.layer.cornerRadius = 5
        
        // Initialization code
        callButton.layer.cornerRadius = 5
    }
    @IBOutlet weak var addressTv: UITextView!
    
    @IBOutlet weak var datelbl: UILabel!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

//
//  ListTableViewCell.swift
//  Lively
//
//  Created by sramika mangalapurapu on 5/4/20.
//  Copyright © 2020 Dineshkumar kothuri. All rights reserved.
//

import UIKit

class ListTableViewCell: UITableViewCell {
    @IBOutlet weak var imgView: UIImageView!
    
    @IBOutlet weak var walkBtn: UIButton!
    @IBOutlet weak var liveOpnHouseBtn: UIButton!
    @IBOutlet weak var listTextV: UITextView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

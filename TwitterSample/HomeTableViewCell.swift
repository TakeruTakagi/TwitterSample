//
//  TimelineTableViewCell.swift
//  TwitterSample
//
//  Created by 髙木　武 on 2022/11/13.
//

import UIKit

 class HomeTableViewCell: UITableViewCell {
     @IBOutlet weak var userName: UILabel!
     @IBOutlet weak var dateTextLabel: UILabel!
     @IBOutlet weak var tweetTextlabel: UILabel!

     override func awakeFromNib() {
         super.awakeFromNib()
         // Initialization code
     }

     override func setSelected(_ selected: Bool, animated: Bool) {
         super.setSelected(selected, animated: animated)

         // Configure the view for the selected state
     }

 }

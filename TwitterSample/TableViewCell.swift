//
//  TableViewCell.swift
//  TwitterSample
//
//  Created by 髙木　武 on 2022/11/13.
//

import Foundation
import UIKit

final class TableViewCell: UITableViewCell {
    static let reusaIdentifire = "TableViewCell"
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var tweetLabel: UILabel!
    
    required init?(coder aDecorder: NSCoder) {
        super.init(coder: aDecorder)
    }
    
    static func nib() -> UINib {
        return UINib(nibName: TableViewCell.reusaIdentifire, bundle: nil)
    }
    
    func bind(nameLabel: String, TweetLabel: String) {
        self.nameLabel.text = nameLabel
        self.tweetLabel.text = TweetLabel
    }

}

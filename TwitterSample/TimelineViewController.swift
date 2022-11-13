//
//  TimelineViewController.swift
//  TwitterSample
//
//  Created by 髙木　武 on 2022/11/13.
//

import Foundation
import UIKit

class TimelineViewController: UIViewController{
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("表示されました")
        tableView.dataSource = self
        tableView.estimatedRowHeight = 50
        tableView.rowHeight = UITableView.automaticDimension
    }
    
    private func setupTableView() {
        tableView.dataSource = self
        tableView.register(TableViewCell.nib(), forCellReuseIdentifier: TableViewCell.reusaIdentifire)
    }
    
    let timeline = timelines
}


extension TimelineViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return timeline.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.reusaIdentifire, for: indexPath) as? TableViewCell else { return UITableViewCell()}
        cell.bind(nameLabel: timeline[indexPath.row].name, TweetLabel: timeline[indexPath.row].tweet)
        return cell
    }
}

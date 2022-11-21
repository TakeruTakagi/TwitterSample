//
//  TimelineViewController.swift
//  TwitterSample
//
//  Created by 髙木　武 on 2022/11/13.
//

import Foundation
import UIKit

class TimelineViewController: UIViewController, UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    
    var homeData: [HomeViewDateModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("表示されました")
        tableView.dataSource = self
        tableView.estimatedRowHeight = 50
        tableView.rowHeight = UITableView.automaticDimension
        tableView.register(UINib(nibName: "TweetTableViewCell", bundle: nil), forCellReuseIdentifier: "customCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return homeData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! TweetTableViewCell
                return cell
    }
    
    private func setupTableView() {
        tableView.dataSource = self
    }
    
}




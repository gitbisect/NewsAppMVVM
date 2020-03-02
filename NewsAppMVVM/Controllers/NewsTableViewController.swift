//
//  NewsTableViewController.swift
//  NewsAppMVVM
//
//  Created by Varghese, John on 3/2/20.
//  Copyright © 2020 Intuit, Inc. All rights reserved.
//

import Foundation
import UIKit

class NewsTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let barBgColor = UIColor(displayP3Red: 162/255, green: 155/255, blue: 254/255, alpha: 1.0)
        if let navBar = self.navigationController?.navigationBar {
            navBar.prefersLargeTitles = true
            navBar.backgroundColor = barBgColor
            navBar.barTintColor = barBgColor
            navBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
            navBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        }
    }
}

//
//  NewsTableViewController.swift
//  NewsAppMVVM
//
//  Created by Varghese, John on 3/2/20.
//  Copyright © 2020 Intuit, Inc. All rights reserved.
//

import Foundation
import UIKit
import RxSwift

class NewsTableViewController: UITableViewController {
    
    let disposeBag = DisposeBag()
    
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
        populateNews()
    }
    
    private func populateNews() {
        let resource = Resource<ArticleResponse>(url: URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=f518f4ad180548899e63f85a326e37dd")!)
        
        URLRequest.load(resource: resource)
            .subscribe(onNext: {
                print($0)
            }).disposed(by: disposeBag)
    }
}

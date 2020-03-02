//
//  Article.swift
//  NewsAppMVVM
//
//  Created by Varghese, John on 3/2/20.
//  Copyright © 2020 Intuit, Inc. All rights reserved.
//

import Foundation

struct ArticleResponse: Decodable {
    let articles: [Article]
}
struct Article: Decodable {
    let title: String
    let description: String?
}

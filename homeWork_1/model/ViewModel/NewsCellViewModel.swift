//
//  NewsCellViewModel.swift
//  homeWork_1
//
//  Created by Denis Evdokimov on 18/03/2019.
//  Copyright © 2019 Марат Нургалиев. All rights reserved.
//

import Foundation
import UIKit

struct NewsCellViewModel{
    let dateText: String
    let sourceName: String
    let feedText: String
    let likesCount: String
    let viewsCount: String
    let shareCount: String
    let commentCount: String
    let imageViewGroup: UIImageView
    let newsImage: UIImageView
    
    let attachCount: Int
    let attachWidth: Int
    let attachHeight: Int
}

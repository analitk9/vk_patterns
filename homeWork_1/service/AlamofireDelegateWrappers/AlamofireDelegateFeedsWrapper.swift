//
//  AlamofireDelegateFeedsWrapper.swift
//  homeWork_1
//
//  Created by Denis Evdokimov on 17/03/2019.
//  Copyright © 2019 Марат Нургалиев. All rights reserved.
//

import Foundation

final class AlamofireDelegateFeedsWrapper: VkApiFeedsDelegate {
    var completion: (([VkFeed])->Void)?
    var onDataLoad: ((AlamofireDelegateFeedsWrapper)->Void)?
    
    func returnFeeds(_ feeds: [VkFeed]) {
        
        self.completion?(feeds)
        self.onDataLoad?(self)
        
    }
    
}

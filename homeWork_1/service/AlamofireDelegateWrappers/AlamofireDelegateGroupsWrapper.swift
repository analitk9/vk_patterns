//
//  AlamofireDelegateGroupsWrapper.swift
//  homeWork_1
//
//  Created by Denis Evdokimov on 17/03/2019.
//  Copyright © 2019 Марат Нургалиев. All rights reserved.
//

import Foundation

final class AlamofireDelegateGroupsWrapper: VkApiGroupsDelegate {
    
    var completion: (([VkGroup]) -> Void)?
    var completionLeave: ((Int) -> Void)?
    var onDataLoad: ((AlamofireDelegateGroupsWrapper)->Void)?
    
    func returnGroups(_ groups: [VkGroup]) {
        self.completion?(groups)
        self.onDataLoad?(self)
    }
    
    func returnLeave(_ gid: Int) {
        self.completionLeave?(gid)
        self.onDataLoad?(self)
    }
    
    func returnLeave(_ error: String) {
        print(error)
    }
    
    func returnJoin(_ gid: Int) {
    }
    
    func returnJoin(_ error: String) {
    }
    
}

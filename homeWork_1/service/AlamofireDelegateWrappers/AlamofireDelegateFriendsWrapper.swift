//
//  AlamofireDelegateFriendsWrapper
//  homeWork_1
//
//  Created by Denis Evdokimov on 16/03/2019.
//  Copyright © 2019 Марат Нургалиев. All rights reserved.
//

import Foundation

final class AlamofireDelegateFriendsWrapper: VkApiFriendsDelegate {
    var completion: (([VkFriend])->Void)?
    var onDataLoad: ((AlamofireDelegateFriendsWrapper)->Void)?
    
    func returnFriends(_ friends: [VkFriend]) {
       
        self.completion?(friends)
        self.onDataLoad?(self)
        
    }
    
}







//
//  AlamofireAdapterProxy.swift
//  homeWork_1
//
//  Created by Denis Evdokimov on 27/03/2019.
//  Copyright © 2019 Марат Нургалиев. All rights reserved.
//

import Foundation

protocol AlamofireProxyProtocol {
    func getFriends(completion: @escaping ([VkFriend]) -> Void)
    func returnFeeds(startFrom: String, completion: @escaping ([VkFeed]) -> Void )
    func returnGroups(completion: @escaping ([VkGroup]) -> Void )
    func leaveGroup(gid: Int, completion: @escaping (Int) -> Void)
}

class AlamofireAdapterProxy: AlamofireProxyProtocol {
    private  let alamorifireAdapter = AlamofireAdapter()
    
    func getFriends(completion: @escaping ([VkFriend]) -> Void) {
        self.alamorifireAdapter.getFriends(completion: completion)
        print("типа логируем вызов запроса getFriends")
    }
    
    func returnFeeds(startFrom: String, completion: @escaping ([VkFeed]) -> Void) {
        self.alamorifireAdapter.returnFeeds(startFrom: startFrom, completion: completion)
        print("типа логируем вызов запроса returnFeeds")
    }
    
    func returnGroups(completion: @escaping ([VkGroup]) -> Void) {
        self.alamorifireAdapter.returnGroups(completion: completion)
        print("типа логируем вызов запроса returnGroups")
    }
    
    func leaveGroup(gid: Int, completion: @escaping (Int) -> Void) {
        self.alamorifireAdapter.leaveGroup(gid: gid, completion: completion)
        print("типа логируем вызов запроса leaveGroup")
    }
    
}

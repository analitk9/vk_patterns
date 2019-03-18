//
//  AlamofireAdapter.swift
//  homeWork_1
//
//  Created by Denis Evdokimov on 16/03/2019.
//  Copyright © 2019 Марат Нургалиев. All rights reserved.
//

import Foundation

final class AlamofireAdapter {
   
    private var friendsWrappers: [AlamofireDelegateFriendsWrapper] = []
    private var feedsWrappers:   [AlamofireDelegateFeedsWrapper]   = []
    private var groupsWrapper:   [AlamofireDelegateGroupsWrapper]  = []
    
    private let alamofireInstance =  AlamofireService.instance
    
    func getFriends(completion: @escaping ([VkFriend]) -> Void){
      let wrapper = AlamofireDelegateFriendsWrapper()
      wrapper.completion = completion
        wrapper.onDataLoad = { [weak self] wrapper in
            self?.friendsWrappers.removeAll(where: {
                $0 === wrapper})
        }
        alamofireInstance.getFriends(delegate: wrapper )
        self.friendsWrappers.append(wrapper)

    }
    
    func returnFeeds(startFrom: String, completion: @escaping ([VkFeed]) -> Void ){
        let wrapper = AlamofireDelegateFeedsWrapper()
        wrapper.completion = completion
        wrapper.onDataLoad = { [weak self] wrapper in
            self?.feedsWrappers.removeAll(where: {
                $0 === wrapper})
        }
        alamofireInstance.getNews(startFrom: startFrom, delegate: wrapper)
        self.feedsWrappers.append(wrapper)
    }
    
    func returnGroups(completion: @escaping ([VkGroup]) -> Void ){
       let wrapper = AlamofireDelegateGroupsWrapper()
       
        wrapper.completion = completion
        wrapper.onDataLoad = { [weak self] wrapper in
            self?.groupsWrapper.removeAll(where: {
                $0 === wrapper})
        }
        alamofireInstance.getGroups(delegate: wrapper)
        self.groupsWrapper.append(wrapper)
        
    }
    
    func leaveGroup(gid: Int, completion: @escaping (Int) -> Void){
       let wrapper = AlamofireDelegateGroupsWrapper()
        wrapper.completionLeave = completion
        wrapper.onDataLoad = { [weak self] wrapper in
            self?.groupsWrapper.removeAll(where: {
                $0 === wrapper})
        }
        alamofireInstance.leaveGroup(gid: gid, delegate: wrapper)
        self.groupsWrapper.append(wrapper)
    }
    
    
}

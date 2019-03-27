//
//  NewsCellFactory.swift
//  homeWork_1
//
//  Created by Denis Evdokimov on 18/03/2019.
//  Copyright © 2019 Марат Нургалиев. All rights reserved.
//

import Foundation
import UIKit
import SDWebImage

final class NewsCellFactory {
    func constructViewModels(from feeds: [VkFeed]) -> [NewsCellViewModel] {
        return feeds.compactMap(self.viewModel)
    }
    
    private func viewModel(news: VkFeed) -> NewsCellViewModel{
        let feedText =  news.feedText
        let sourceName = news.sourceName
        let dateText = news.getFeedDate()
        let likesCount = news.getStringFrom(count: news.countLikes)
        let viewsCount = news.getStringFrom(count: news.countViews)
        let shareCount = news.getStringFrom(count: news.countReposts)
        let commentCount = news.getStringFrom(count: news.countComments)
        let attachCount = news.attachments.count
        let imageViewGroup = UIImageView()
        imageViewGroup.sd_setImage(with: URL(string: news.sourceUrl), placeholderImage: UIImage(named: "noPhoto"))
        let newsImageView = UIImageView()
        if attachCount > 0 {
            newsImageView.sd_setImage(with: URL(string:  news.attachments[0].imageUrl), placeholderImage: UIImage(named: "noPhoto"))
        }
        let height = attachCount > 0 ? news.attachments[0].height : 0
        let width  = attachCount > 0 ? news.attachments[0].width : 0
    
        
        return NewsCellViewModel(dateText: dateText, sourceName: sourceName, feedText: feedText, likesCount: likesCount, viewsCount: viewsCount, shareCount: shareCount, commentCount: commentCount, imageViewGroup: imageViewGroup, newsImage: newsImageView, attachCount: attachCount, attachWidth: width, attachHeight: height)
    }
}

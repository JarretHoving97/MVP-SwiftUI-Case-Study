//
//  FeedLoaderPresentationAdapter.swift
//  FeedUIinMVPSwiftUI
//
//  Created by Jarret Hoving on 30/09/2024.
//

import Foundation

public class FeedLoaderPresentationAdapter: FeedControllerDelegate {

    private let feedLoader: FeedLoader
    
    var presenter: FeedPresenter?
    
    init(feedLoader: FeedLoader) {
        self.feedLoader = feedLoader
    }
    
    public func didRequestFeedRefresh() {
        
        presenter?.didStartLoadingFeed()
        
        feedLoader.load { [weak self] result in
            self?.presenter?.didFinishLoading()
        }
    }
}

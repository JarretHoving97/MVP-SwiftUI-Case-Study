//
//  FeedUIComposer.swift
//  FeedUIinMVPSwiftUI
//
//  Created by Jarret Hoving on 30/09/2024.
//

import Foundation

public final class FeedUIComposer {
    
    private init() {}
    
    public static func feedComposeWith(feedLoader: FeedLoader) -> FeedView {
        
        let presentationAdapter = FeedLoaderPresentationAdapter(
            feedLoader: MainQueueDispatchDecorator(decoratee: feedLoader)
        )
        
        let vm = FeedViewModel()
        
        presentationAdapter.presenter = FeedPresenter(
            loadingView: WeakRefVirtualProxy(vm)
        )
        
        let feedView = FeedView(delegate: presentationAdapter, vm: vm)
    
        return feedView
    }
}

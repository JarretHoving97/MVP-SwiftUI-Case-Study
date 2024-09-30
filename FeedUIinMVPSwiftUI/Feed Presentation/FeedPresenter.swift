//
//  FeedPresenter.swift
//  FeedUIinMVPSwiftUI
//
//  Created by Jarret Hoving on 30/09/2024.
//

import Foundation

public struct FeedLoadingViewModel {
    let isLoading: Bool
}

public protocol FeedLoadingView {
    func display(_ viewModel: FeedLoadingViewModel)
}

public final class FeedPresenter {
    
    private let loadingView: FeedLoadingView
    
    init(loadingView: FeedLoadingView) {
        self.loadingView = loadingView
    }
    
    public func didStartLoadingFeed() {
        loadingView.display(FeedLoadingViewModel(isLoading: true))
    }
    
    public func didFinishLoading() {
        loadingView.display(FeedLoadingViewModel(isLoading: false))
    }
}

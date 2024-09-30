//
//  FeedView.swift
//  FeedUIinMVPSwiftUI
//
//  Created by Jarret Hoving on 30/09/2024.
//

import SwiftUI

public protocol FeedControllerDelegate {
    func didRequestFeedRefresh()
}

public struct FeedView: View {
    var delegate: FeedControllerDelegate?
    
    @ObservedObject private var vm: FeedViewModel
    
    init(delegate: FeedControllerDelegate? = nil, vm: FeedViewModel) {
        self.delegate = delegate
        self.vm = vm
    }
    
    public var body: some View {
        VStack {
            if vm.isLoading {
                ProgressView("Loading feed...")
            } else {
                Text("Feed Loaded")
            }
            
            Button("Reload") {
                delegate?.didRequestFeedRefresh()
            }
        }
        .onAppear {
            delegate?.didRequestFeedRefresh()
        }
    }
}

#Preview {
    FeedUIComposer.feedComposeWith(feedLoader: MockFeedLoader())
}

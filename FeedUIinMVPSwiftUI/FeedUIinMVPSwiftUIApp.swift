//
//  FeedUIinMVPSwiftUIApp.swift
//  FeedUIinMVPSwiftUI
//
//  Created by Jarret Hoving on 30/09/2024.
//

import SwiftUI

@main
struct FeedUIinMVPSwiftUIApp: App {
    
    var body: some Scene {
        WindowGroup {
            FeedUIComposer.feedComposeWith(feedLoader: MockFeedLoader())
        }
    }
}

class MockFeedLoader: FeedLoader {
    
    
    func load(completion: @escaping (FeedLoader.Result) -> Void) {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
            completion(.success([]))
        }
    }
}

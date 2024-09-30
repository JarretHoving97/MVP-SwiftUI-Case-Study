//
//  FeedViewModel.swift
//  FeedUIinMVPSwiftUI
//
//  Created by Jarret Hoving on 30/09/2024.
//

import Foundation


class FeedViewModel: ObservableObject, FeedLoadingView {

    @Published var isLoading: Bool = true
    
    @MainActor
    func display(_ viewModel: FeedLoadingViewModel) {
        isLoading = viewModel.isLoading
    }
}

//
//  FeedLoader.swift
//  FeedUIinMVPSwiftUI
//
//  Created by Jarret Hoving on 30/09/2024.
//

import Foundation

public protocol FeedLoader {
    
    typealias Result = Swift.Result<[String], Error>
    
    func load(completion: @escaping (Result) -> Void)
}

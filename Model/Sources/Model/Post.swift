//
//  Post.swift
//  SocialProfile
//
//  Created by Matteo Manferdini on 02/11/22.
//

import Foundation

public struct Post: Hashable, Identifiable {
	public let id = UUID()
	public let text: String
	public let date: Date
	public var comments: [Comment]
	public var likes: Int

	public init(text: String, date: Date, comments: [Comment], likes: Int) {
		self.text = text
		self.date = date
		self.comments = comments
		self.likes = likes
	}
}

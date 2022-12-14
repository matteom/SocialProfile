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

	public init(text: String, date: Date) {
		self.text = text
		self.date = date
	}
}

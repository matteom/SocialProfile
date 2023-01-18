//
//  File.swift
//  
//
//  Created by Matteo Manferdini on 18/01/23.
//

import Foundation

public struct Comment: Hashable, Identifiable {
	public let id = UUID()
	public let owner: User
	public let text: String

	public init(owner: User, text: String) {
		self.owner = owner
		self.text = text
	}
}
